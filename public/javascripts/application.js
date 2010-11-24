// Place your application-specific JavaScript functions and classes here
// This file is automatically included by javascript_include_tag :defaults

<script type='text/javascript'>
  var so = new SWFObject('player.swf','ply','800','240','9','#');
  so.addParam('allowfullscreen','true');
  so.addParam('allowscriptaccess','always');
  so.addVariable('file','http://www.longtailvideo.com/jw/upload/tutorial-mrss.xml');
  so.addVariable('playlistsize', '400');
  so.addVariable('playlist','right');
  so.write('mediaspace');
</script>

