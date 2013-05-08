<%--
 DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS HEADER.

 Copyright 1997-2010 Oracle and/or its affiliates. All rights reserved.

 Oracle and Java are registered trademarks of Oracle and/or its affiliates.
 Other names may be trademarks of their respective owners.

 The contents of this file are subject to the terms of either the GNU
 General Public License Version 2 only ("GPL") or the Common
 Development and Distribution License("CDDL") (collectively, the
 "License"). You may not use this file except in compliance with the
 License. You can obtain a copy of the License at
 http://www.netbeans.org/cddl-gplv2.html
 or nbbuild/licenses/CDDL-GPL-2-CP. See the License for the
 specific language governing permissions and limitations under the
 License.  When distributing the software, include this License Header
 Notice in each file and include the License file at
 nbbuild/licenses/CDDL-GPL-2-CP.  Oracle designates this
 particular file as subject to the "Classpath" exception as provided
 by Oracle in the GPL Version 2 section of the License file that
 accompanied this code. If applicable, add the following below the
 License Header, with the fields enclosed by brackets [] replaced by
 your own identifying information:
 "Portions Copyrighted [year] [name of copyright owner]"
 
 Contributor(s):
 
 The Original Software is NetBeans. The Initial Developer of the Original
 Software is Sun Microsystems, Inc. Portions Copyright 1997-2007 Sun
 Microsystems, Inc. All Rights Reserved.
 
 If you wish your version of this file to be governed by only the CDDL
 or only the GPL Version 2, indicate your decision by adding
 "[Contributor] elects to include this software in this distribution
 under the [CDDL or GPL Version 2] license." If you do not indicate a
 single choice of license, a recipient has the option to distribute
 your version of this file under either the CDDL, the GPL Version 2 or
 to extend the choice of license to its licensees as provided above.
 However, if you add GPL Version 2 code and therefore, elected the GPL
 Version 2 license, then the option applies only if the new code is
 made subject to such option by the copyright holder.
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <h1>Add roles and Super role</h1>
        <form method="post" action="http://localhost:8080/RBAC/resources/role">
            Role Id : <input type="text" name ="role_id">
            Role Name : <input type="text" name ="role_name">
            Super Role : <input type="text" name ="super_role_id">
            <input type="submit">
        </form>
         
        <h1>Delete roles</h1>
        <form method ="post" action ="http://localhost:8080/RBAC/resources/role/delete">
            Role Id : <input type="text" name ="role_id">
            <input type="submit">
        </form>
        
        <h1>Role Assignment</h1>
        <form method="post" action="http://localhost:8080/RBAC/resources/roleassignment">
            User Id:  <input type="text" name="user_id">
            Role Id: <input type="text" name="role_id">
            <input type="submit">
        </form>
        
        <h1>Make Permissions</h1>
        <form method="post" action="http://localhost:8080/RBAC/resources/permission/make">
            Permission Id:  <input type="text" name="pid">
            Permission name: <input type="text" name="pname">
            <input type="submit">
        </form>
        
        <%--    <h1>Permissions Delete</h1>
        <form method="delete" action="http://localhost:8080/RBAC/resources/permission">
            Permission Id:  <input type="text" name="pid">
            <input type="submit">
        </form> --%>
        
        <h1>Permissions To Object and roles</h1>
        <form method="post" action="http://localhost:8080/RBAC/resources/permission/assign">
            Role Id:  <input type="text" name="role_id">
            Permission Id:  <input type="text" name="pid">
            Object Id:  <input type="text" name="obj_id">
            <input type="submit">
        </form>
        
        <h1>Check Permission</h1>
        <form method="post" action="http://localhost:8080/RBAC/resources/permission/check">
            Role Id:  <input type="text" name="role_id">
            Permission Id:  <input type="text" name="pid">
            Object Id:  <input type="text" name="file_id">       
            <input type="submit">
        </form>
        
    </body>
</html>
