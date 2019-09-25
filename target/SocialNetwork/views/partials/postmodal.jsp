<%--
  Created by IntelliJ IDEA.
  User: Sagar
  Date: 09/23/19
  Time: 2:23 PM
  To change this template use File | Settings | File Templates.
--%>
<div id="postModal" class="modal fade" tabindex="-1" role="dialog" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true">×</button>
                Update Status
            </div>
            <div class="modal-body">
                <form class="form center-block" action="post/newPost" method="post">
                    <div class="form-group">
                        <textarea class="form-control input-lg" name="body" autofocus="" placeholder="What do you want to share?"></textarea>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <div>
                    <button class="btn btn-primary btn-sm" type="submit" aria-hidden="true">Post</button>
                    <ul class="pull-left list-inline"><li><label for="file-upload" class="custom-file-upload"><i class="glyphicon glyphicon-upload"></i></label><input id="file-upload" type="file" name="image"/></li>
                        <li><a href=""><i class="glyphicon glyphicon-camera"></i></a></li><li><a href=""><i class="glyphicon glyphicon-map-marker"></i></a></li></ul>
                </div>
            </div>
        </div>
    </div>
</div>
