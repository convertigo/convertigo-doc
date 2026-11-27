---
title: Generate an NGX CRUD interface
keywords: SQL, CRUD, NGX, AG Grid, shared components, transactions, sequences
last_updated: 27/11/2026
summary: "Generate a reusable grid and form from a SQL table in Convertigo Studio."
sidebar: c8o_sidebar
permalink: /programming-guide/backend-developers/sql-crud-ui/
---

Since 8.4.8, the SQL connector's **Design** tab can generate an NGX interface for creating, reading, updating and deleting rows. Set up a [SQL connector](../#create-a-sql-connector-based-project) in a project that already contains an NGX application.

## Generate the interface

1. Open the SQL connector and select **Design**. Keep **TABLE** selected, click **Search** and select one or more tables from the results.
2. Under **For TABLE…**, choose the operations to generate. **LIST**, **COUNT**, **INSERT**, **SELECT**, **UPDATE** and **DELETE** are selected by default. Keep **LIST** selected to generate the grid and **COUNT** to give a paginated grid its exact row total.
3. Under **For Sequences…**, select **Generate Sequences** to expose the sequence settings. Choose **Accessibility Public**, **Accessibility Hidden** (the default) or **Accessibility Private**. Use Hidden or Public for the sequences called by the NGX app. **Authenticated session MANDATORY** is selected by default. Keep it selected when users must sign in before using the interface. Clear it if the application is intended to allow unauthenticated use.
4. Under **For NGX…**, select **Generate NGX shared component (AG Grid + form)**. Leave **and its page** selected to create the sample page, or clear it if you want to place the components yourself. The NGX option is available when the project contains an NGX application.
5. Click **Import selected in the project**. Review the generation summary, save the project and open the application in the [Application Viewer](../../frontend-developers/#application-viewer).

Leave **Override** cleared to keep existing generated objects. With **Generate Sequences** and **Override** selected, Studio replaces matching generated transactions and rebuilds unchanged generated sequences with the selected accessibility and authentication settings. With only NGX generation selected, Studio creates missing wrappers for the selected operations and reuses matching existing wrappers and their transactions. Existing wrappers keep their settings in this mode. Studio preserves and reports customized sequences and objects whose origin it cannot verify.

## Generated objects

For a table named `products`, the connector gets transactions such as `products_LIST` and `products_COUNT`, and the project gets sequence wrappers of the same name. `LIST` supplies the grid, and `COUNT` runs `SELECT COUNT(*)` for the row total. The grid uses `INSERT`, `UPDATE` and `DELETE` for the corresponding actions when those operations are available. The separate `SELECT` operation looks up a row by its key when one is available. **View** in the grid uses the selected row.

The NGX application gets `productTable` (an AG Grid with a toolbar) and `productForm` (a typed form used by **Add**, **View** and **Edit**). The optional `Products` page is included in the automatic menu. Studio imports `lib_ExtendedComponents_ui_ngx` if needed and adds a project reference when one is missing.

For tables with SQL pagination, the grid loads blocks of 50 rows by default. Set `pagination` to `true` for page controls. `COUNT` sizes the scrollbar and lets the grid jump straight to the last page. The grid refreshes the count when it reloads after a write. Without `COUNT`, it discovers the end of the list as it loads rows.

Click a column heading to sort. With SQL pagination, the database sorts the result before returning each block. The default order follows the primary key, and the remaining columns of the key break ties when the user sorts by another column. If you call a generated paginated `LIST` sequence directly, `sort_key` is the exact column name, `sort_direction` is `asc` or `desc`, `limit` is an integer from 1 to 1,000, and `offset` is a non-negative integer.

## Table shared component

Set these variables on the **Use Shared Component** object that uses `productTable`.

| Variable | Default | Effect |
| --- | --- | --- |
| `enableAdd`, `enableEdit`, `enableView`, `enableDelete` | `true` | Show the corresponding action when it is available for the table and selection. Setting `enableDelete` to `false` also switches to single selection. |
| `multiSelect` | `true` | Allow checkbox selection when Delete is available. Set to `false` for single selection. |
| `showId` | `true` | Show primary-key columns. |
| `hiddenColumns` | `[]` | Hide columns by name, for example `['notes', 'created_at']`. |
| `pageSize` | `50` | Rows per page and per request when loading blocks from the server. |
| `pagination` | `false` | Set to `true` to show pages. |
| `height` | `'600px'` | Grid height. Use `'auto'` to fit the rows. |
| `showTitle` | `true` | Show the title in the toolbar. |
| `reloadKey` | `0` | Change the value to reload the rows. |
| `labels` | English labels | Customize buttons, messages and column and form labels. Use the `fields` property for labels keyed by column name, and single quotes for strings in the Studio expression. |

| Event | Data | When it fires |
| --- | --- | --- |
| `SelectionChanged` | `{rows}` | The grid selection changes. |
| `RowSaved` | `{row, mode}` | The popup form creates or updates a row. |
| `RowsDeleted` | `{rows}` | A delete operation reports the rows it deleted. |
| `FormCancelled` | `{mode}` | The popup form closes without saving. |

## Form shared component

The grid opens `productForm` in a popup. To embed it in a page, add a **Use Shared Component** for `productForm` and bind the variables below.

| Variable | Default | Effect |
| --- | --- | --- |
| `row` | `{}` | Row to display or edit, or initial values for a new row. |
| `mode` | `'create'` | Use `'create'` to add a row, `'edit'` to update it, or `'view'` to show it read-only. |
| `showTitle` | `true` | Show the title above the fields. |
| `showClose` | `true` | Show **Close** in view mode or **Cancel** in create and edit modes. |
| `labels` | English labels | Customize form text and field labels. |

The form emits `RowSaved` with `{row, mode}` after saving, and `FormCancelled` with `{mode}` when the user cancels or closes it.

The sample page stores `event.rows[0]` in `page.local.selectedRow` on `SelectionChanged` when exactly one row is selected. It clears that value on zero or multiple selections and on `RowsDeleted`, and merges edited values into it on `RowSaved`. An **If** on `this.local.selectedRow` controls the embedded form, with `row = this.local.selectedRow`, `mode = 'view'` and `showClose = false`. The embedded form can be moved or removed independently of the grid popup.

To allow editing in the page, set `mode = 'edit'`. Handle the embedded form's `RowSaved` event by setting `page.local.reloadKey = Date.now()` and bind the grid's `reloadKey` to `this.local.reloadKey`. The generated form updates only the fields the user changed. Clearing an editable nullable field saves `NULL`.

## Migrate an existing generated project

Generation adds new objects to the project. Studio skips UI generation if either target shared component already exists. If only the page name or route is taken, it creates the components and reports the page conflict.

To adopt the new generation in a project with older or customized CRUD objects, first generate the same table in a separate NGX project. Compare the new transactions, sequence settings, components and page with your existing objects. Move or adapt them together, reapplying your customizations and updating the page and shared-component references as needed. Test listing, sorting, and each enabled write operation before replacing the existing objects. An older project may use `order_by` where the new list expects `sort_key` and `sort_direction`. The new update form also sends the changed-field list expected by the generated update transaction, so keep the form and backend in sync.

## Limits

- A table without a primary key is read-only. Studio omits `INSERT`, `UPDATE` and `DELETE` and the corresponding UI actions. The grid loads the full list and sorts it in the browser. Consider the size of the table before generating this view.
- Binary columns are omitted from the form and grid. A table with binary columns has no Edit action, and a required binary column can also prevent Add. Generated forms use typed inputs for foreign keys, with no lookup lists. Column filters are unavailable in the generated grid.
- The database default for a column does not apply if the generated `INSERT` sends a value for that column. Non-nullable inputs for computed defaults may require a value in the form.
- The generator was tested with PostgreSQL and HSQLDB.
