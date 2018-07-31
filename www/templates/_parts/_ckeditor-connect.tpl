<script src="<?=HOST?>libs/ckeditor/ckeditor.js"></script>
<script>
	document.addEventListener('DOMContentLoaded', function() {
		CKEDITOR.replace('ckeditor', {
			customConfig: '<?=HOST?>templates/assets/js/ckeditor-config.js'
		});
	});
</script>