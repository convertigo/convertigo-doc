{% assign nanosecond = "now" | date: "%N" %}
<textarea id="code{{ nanosecond }}" style="opacity:0;position:absolute;z-index:-1">{{ code | xml_escape }}</textarea>
<button id="copybutton{{ nanosecond }}" data-clipboard-target="#code{{ nanosecond }}">
  {{ include.buttonText}}
</button>

<script>
var copybutton = document.getElementById('copybutton{{ nanosecond }}');
var clipboard{{ nanosecond }} = new ClipboardJS(copybutton);

clipboard{{ nanosecond }}.on('success', function(e) {
    console.log(e);
});
clipboard{{ nanosecond }}.on('error', function(e) {
    console.log(e);
});
</script>
