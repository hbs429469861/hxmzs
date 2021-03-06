<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2017/4/2
  Time: 11:46
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<div class="sidebar-category sidebar-category-visible">
    <div class="category-content no-padding">
        <ul class="navigation navigation-main navigation-accordion">

            <!-- Main -->
            <li class="navigation-header"><span>系统管理设置</span> <i class="icon-menu" title="Main pages"></i></li>
            <%--  <li><a href="index.html"><i class="icon-home4"></i> <span>Dashboard</span></a></li>--%>

            <c:if test="${user.adminType =='1'}">
                <li>
                    <a href="#"><i class="icon-stack2"></i> <span>系统管理模块</span></a>
                    <ul>
                        <li><a href="#" id="add2AadminUI">添加管理员</a></li>
                        <li><a href="#" id="add2AdminList">管理员列表</a></li>
                        <li><a href="#" id="add2LogsList">日志列表</a></li>
                            <%--<li><a href="layout_navbar_hideable.html">Hideable navbar</a></li>
                           <li><a href="layout_navbar_hideable_sidebar.html">Hideable &amp; fixed sidebar</a></li>
                           <li><a href="layout_footer_fixed.html">Fixed footer</a></li>
                           <li class="navigation-divider"></li>
                           <li><a href="boxed_default.html">Boxed with default sidebar</a></li>
                           <li><a href="boxed_mini.html">Boxed with mini sidebar</a></li>
                           <li><a href="boxed_full.html">Boxed full width</a></li>--%>
                    </ul>
                </li>
                <li>
                    <a href="#"><i class="icon-magazine"></i> <span>用户管理</span></a>
                    <ul>
                        <li><a href="#" id="add2MasterList">mastere列表</a></li>
                    </ul>
                </li>
            </c:if>

            <li>
                <a href="#"><i class="icon-copy"></i> <span>在线教育业务管理</span></a>
                <ul>
                    <li><a href="#" id="add2ServicesUI">添加平台业务展示<span class="label bg-warning-400">Service</span></a></li>
                    <li><a href="#" id="iconSetting">icon展示</a></li>
                    <li><a href="#" id="add2ServicesList">Service列表</a></li>
                   <%-- <li class="disabled"><a href="../../layout_5/LTR/index.html" id="layout5">Layout 5 <span class="label">Coming soon</span></a></li>
                   --%>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-droplet2"></i> <span>平台广告位管理</span></a>
                <ul>
                    <li><a href="#" id="add2HomeUI">Banner添加</a></li>
                    <li><a href="#" id="add2HomeList">Banner列表</a></li>
                </ul>
            </li>

            <li>
                <a href="#"><i class="icon-cash3"></i> <span> 平台信息管理</span></a>
                <ul>
                    <li><a href="#" id="add2ContactUI">contact添加</a></li>
                    <li><a href="#" id="add2ContactLists">contact列表</a></li>
                    <li class="navigation-divider"></li>
                    <li><a href="#" id="add2MottoUI">motto添加</a></li>
                    <li><a href="#" id="add2MottoLists">motto列表</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-stack"></i> <span>平台团队管理</span></a>
                <ul>
                    <li><a href="#" id="add2OurTeamUI">Team添加</a></li>
                    <li><a href="#" id="add2OurTeamList">Team列表</a></li>
                   <%-- <li><a href="${pageContext.request.contextPath}/assets/assets/2_col.html">2 columns</a></li>--%>
                   <%-- <li>
                        <a href="#">3 columns</a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/assets/assets/3_col_dual.html">Dual sidebars</a></li>
                            <li><a href="${pageContext.request.contextPath}/assets/assets/3_col_double.html">Double sidebars</a></li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/assets/assets/4_col.html">4 columns</a></li>
                    <li>
                        <a href="#">Detached layout</a>
                        <ul>
                            <li><a href="${pageContext.request.contextPath}/assets/assets/detached_left.html">Left sidebar</a></li>
                            <li><a href="${pageContext.request.contextPath}/assets/assets/detached_right.html">Right sidebar</a></li>
                            <li><a href="${pageContext.request.contextPath}/assets/assets/detached_sticky.html">Sticky sidebar</a></li>
                        </ul>
                    </li>
                    <li><a href="${pageContext.request.contextPath}/assets/assets/layout_boxed.html">Boxed layout</a></li>
                    <li class="navigation-divider"></li>
                    <li><a href="${pageContext.request.contextPath}/assets/assets/layout_navbar_fixed_main.html">Fixed main navbar</a></li>
                    <li><a href="${pageContext.request.contextPath}/assets/assets/layout_navbar_fixed_secondary.html">Fixed secondary navbar</a></li>
                    <li><a href="${pageContext.request.contextPath}/assets/assets/layout_navbar_fixed_both.html">Both navbars fixed</a></li>
                    <li><a href="${pageContext.request.contextPath}/assets/assets/layout_fixed.html">Fixed layout</a></li>
               --%>
                </ul>
            </li>
            <%--<li><a href="changelog.html"><i class="icon-list-unordered"></i> <span>Changelog</span></a></li>--%>
            <!-- /main -->

            <!-- Forms -->
            <li class="navigation-header"><span>project</span> <i class="icon-menu" title="Forms"></i></li>
            <li>
                <a href="#"><i class="icon-list-unordered"></i><span>平台新闻管理</span></a>
                <ul>
                    <li><a href="#" id="add2CaseProjectUI">新闻添加</a></li>
                    <li><a href="#" id="add2CaseProjectList">新闻列表<span class="label bg-warning-400">List</span></a></li>
                    <%--<li><a href="form_input_groups.html">Input groups</a></li>
                    <li><a href="form_controls_extended.html">Extended controls</a></li>
                    <li>
                        <a href="#">Selects</a>
                        <ul>
                            <li><a href="form_select2.html">Select2 selects</a></li>
                            <li><a href="form_multiselect.html">Bootstrap multiselect</a></li>
                            <li><a href="form_select_box_it.html">SelectBoxIt selects</a></li>
                            <li><a href="form_bootstrap_select.html">Bootstrap selects</a></li>
                        </ul>
                    </li>
                    <li><a href="form_tag_inputs.html">Tag inputs</a></li>
                    <li><a href="form_dual_listboxes.html">Dual Listboxes</a></li>
                    <li><a href="form_editable.html">Editable forms</a></li>
                    <li><a href="form_validation.html">Validation</a></li>
                    <li><a href="form_inputs_grid.html">Inputs grid</a></li>--%>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-footprint"></i> <span>平台服务管理</span></a>
                <ul>
                    <li><a href="#" id="add2ServiceProjectUI">服务添加<span class="label bg-warning-400">Core</span></a></li>
                    <li><a href="#" id="add2ServiceProjectList">服务列表</a></li>
                </ul>
            </li>
            <%-- /*add2ServiceProjectUI add2ServiceProjectList */--%>
            <%--<li>
                <a href="#"><i class="icon-spell-check"></i> <span>Editors</span></a>
                <ul>
                    <li><a href="editor_summernote.html">Summernote editor</a></li>
                    <li><a href="editor_ckeditor.html">CKEditor</a></li>
                    <li><a href="editor_wysihtml5.html">WYSIHTML5 editor</a></li>
                    <li><a href="editor_code.html">Code editor</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-select2"></i> <span>Pickers</span></a>
                <ul>
                    <li><a href="picker_date.html">Date &amp; time pickers</a></li>
                    <li><a href="picker_color.html">Color pickers</a></li>
                    <li><a href="picker_location.html">Location pickers</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-insert-template"></i> <span>Form layouts</span></a>
                <ul>
                    <li><a href="form_layout_vertical.html">Vertical form</a></li>
                    <li><a href="form_layout_horizontal.html">Horizontal form</a></li>
                </ul>
            </li>--%>
            <!-- /forms -->

            <!-- Appearance -->
            <%--<li class="navigation-header"><span>Appearance </span> <i class="icon-menu" title="Appearance"></i></li>
            <li>
                <a href="#"><i class="icon-grid"></i> <span>Components</span></a>
                <ul>
                    <li><a href="components_modals.html">Modals</a></li>
                    <li><a href="components_dropdowns.html">Dropdown menus</a></li>
                    <li><a href="components_tabs.html">Tabs component</a></li>
                    <li><a href="components_pills.html">Pills component</a></li>
                    <li><a href="components_navs.html">Accordion and navs</a></li>
                    <li><a href="components_buttons.html">Buttons</a></li>
                    <li><a href="components_notifications_pnotify.html">PNotify notifications</a></li>
                    <li><a href="components_notifications_others.html">Other notifications</a></li>
                    <li><a href="components_popups.html">Tooltips and popovers</a></li>
                    <li><a href="components_alerts.html">Alerts</a></li>
                    <li><a href="components_pagination.html">Pagination</a></li>
                    <li><a href="components_labels.html">Labels and badges</a></li>
                    <li><a href="components_loaders.html">Loaders and bars</a></li>
                    <li><a href="components_thumbnails.html">Thumbnails</a></li>
                    <li><a href="components_page_header.html">Page header</a></li>
                    <li><a href="components_breadcrumbs.html">Breadcrumbs</a></li>
                    <li><a href="components_media.html">Media objects</a></li>
                    <li><a href="components_sliders.html">Slider components</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-puzzle2"></i> <span>Content appearance</span></a>
                <ul>
                    <li><a href="appearance_content_panels.html">Content panels</a></li>
                    <li><a href="appearance_panel_heading.html">Panel heading elements</a></li>
                    <li><a href="appearance_draggable_panels.html">Draggable panels</a></li>
                    <li><a href="appearance_text_styling.html">Text styling</a></li>
                    <li><a href="appearance_typography.html">Typography</a></li>
                    <li><a href="appearance_helpers.html">Helper classes</a></li>
                    <li><a href="appearance_syntax_highlighter.html">Syntax highlighter</a></li>
                    <li><a href="appearance_content_grid.html">Grid system</a></li>
                </ul>
            </li>
            <li><a href="components_animations.html"><i class="icon-spinner3 spinner"></i> <span>CSS3 animations</span></a></li>
            <li>
                <a href="#"><i class="icon-gift"></i> <span>Extra components</span></a>
                <ul>
                    <li><a href="extra_affix.html">Affix and Scrollspy</a></li>
                    <li><a href="extra_session_timeout.html">Session timeout</a></li>
                    <li><a href="extra_idle_timeout.html">Idle timeout</a></li>
                    <li><a href="extra_trees.html">Dynamic tree views</a></li>
                    <li><a href="extra_context_menu.html">Context menu</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-thumbs-up2"></i> <span>Icons</span></a>
                <ul>
                    <li><a href="icons_glyphicons.html">Glyphicons</a></li>
                    <li><a href="icons_icomoon.html">Icomoon</a></li>
                    <li><a href="icons_fontawesome.html">Font awesome</a></li>
                </ul>
            </li>
            <!-- /appearance -->

            <!-- Layout -->
            <li class="navigation-header"><span>Layout</span> <i class="icon-menu" title="Layout options"></i></li>
            <li>
                <a href="#"><i class="icon-indent-decrease2"></i> <span>Sidebars</span></a>
                <ul>
                    <li><a href="sidebar_default_collapse.html">Default collapsible</a></li>
                    <li><a href="sidebar_default_hide.html">Default hideable</a></li>
                    <li><a href="sidebar_mini_collapse.html">Mini collapsible</a></li>
                    <li><a href="sidebar_mini_hide.html">Mini hideable</a></li>
                    <li>
                        <a href="#">Dual sidebar</a>
                        <ul>
                            <li><a href="sidebar_dual.html">Dual sidebar</a></li>
                            <li><a href="sidebar_dual_double_collapse.html">Dual double collapse</a></li>
                            <li><a href="sidebar_dual_double_hide.html">Dual double hide</a></li>
                            <li><a href="sidebar_dual_swap.html">Swap sidebars</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Double sidebar</a>
                        <ul>
                            <li><a href="sidebar_double_collapse.html">Collapse main sidebar</a></li>
                            <li><a href="sidebar_double_hide.html">Hide main sidebar</a></li>
                            <li><a href="sidebar_double_fix_default.html">Fix default width</a></li>
                            <li><a href="sidebar_double_fix_mini.html">Fix mini width</a></li>
                            <li><a href="sidebar_double_visible.html">Opposite sidebar visible</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Detached sidebar</a>
                        <ul>
                            <li><a href="sidebar_detached_left.html">Left position</a></li>
                            <li><a href="sidebar_detached_right.html">Right position</a></li>
                            <li><a href="sidebar_detached_sticky_custom.html">Sticky (custom scroll)</a></li>
                            <li><a href="sidebar_detached_sticky_native.html">Sticky (native scroll)</a></li>
                            <li><a href="sidebar_detached_separate.html">Separate categories</a></li>
                        </ul>
                    </li>
                    <li><a href="sidebar_hidden.html">Hidden sidebar</a></li>
                    <li><a href="sidebar_light.html">Light sidebar</a></li>
                    <li><a href="sidebar_components.html">Sidebar components</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-sort"></i> <span>Vertical navigation</span></a>
                <ul>
                    <li><a href="navigation_vertical_collapsible.html">Collapsible menu</a></li>
                    <li><a href="navigation_vertical_accordion.html">Accordion menu</a></li>
                    <li><a href="navigation_vertical_sizing.html">Navigation sizing</a></li>
                    <li><a href="navigation_vertical_bordered.html">Bordered navigation</a></li>
                    <li><a href="navigation_vertical_right_icons.html">Right icons</a></li>
                    <li><a href="navigation_vertical_disabled.html">Disabled navigation links</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-transmission"></i> <span>Horizontal navigation</span></a>
                <ul>
                    <li><a href="navigation_horizontal_click.html">Submenu on click</a></li>
                    <li><a href="navigation_horizontal_hover.html">Submenu on hover</a></li>
                    <li><a href="navigation_horizontal_elements.html">With custom elements</a></li>
                    <li><a href="navigation_horizontal_tabs.html">Tabbed navigation</a></li>
                    <li><a href="navigation_horizontal_disabled.html">Disabled navigation links</a></li>
                    <li><a href="navigation_horizontal_mega.html">Horizontal mega menu</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-menu3"></i> <span>Navbars</span></a>
                <ul>
                    <li><a href="navbar_single.html">Single navbar</a></li>
                    <li>
                        <a href="#">Multiple navbars</a>
                        <ul>
                            <li><a href="navbar_multiple_navbar_navbar.html">Navbar + navbar</a></li>
                            <li><a href="navbar_multiple_navbar_header.html">Navbar + header</a></li>
                            <li><a href="navbar_multiple_header_navbar.html">Header + navbar</a></li>
                            <li><a href="navbar_multiple_top_bottom.html">Top + bottom</a></li>
                        </ul>
                    </li>
                    <li><a href="navbar_colors.html">Color options</a></li>
                    <li><a href="navbar_sizes.html">Sizing options</a></li>
                    <li><a href="navbar_hideable.html">Hide on scroll</a></li>
                    <li><a href="navbar_components.html">Navbar components</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-tree5"></i> <span>Menu levels</span></a>
                <ul>
                    <li><a href="#"><i class="icon-IE"></i> Second level</a></li>
                    <li>
                        <a href="#"><i class="icon-firefox"></i> Second level with child</a>
                        <ul>
                            <li><a href="#"><i class="icon-android"></i> Third level</a></li>
                            <li>
                                <a href="#"><i class="icon-apple2"></i> Third level with child</a>
                                <ul>
                                    <li><a href="#"><i class="icon-html5"></i> Fourth level</a></li>
                                    <li><a href="#"><i class="icon-css3"></i> Fourth level</a></li>
                                </ul>
                            </li>
                            <li><a href="#"><i class="icon-windows"></i> Third level</a></li>
                        </ul>
                    </li>
                    <li><a href="#"><i class="icon-chrome"></i> Second level</a></li>
                </ul>
            </li>
            <!-- /layout -->

            <!-- Data visualization -->
            <li class="navigation-header"><span>Data visualization</span> <i class="icon-menu" title="Data visualization"></i></li>
            <li>
                <a href="#"><i class="icon-graph"></i> <span>Echarts library</span></a>
                <ul>
                    <li><a href="echarts_lines_areas.html">Lines and areas</a></li>
                    <li><a href="echarts_columns_waterfalls.html">Columns and waterfalls</a></li>
                    <li><a href="echarts_bars_tornados.html">Bars and tornados</a></li>
                    <li><a href="echarts_scatter.html">Scatter charts</a></li>
                    <li><a href="echarts_pies_donuts.html">Pies and donuts</a></li>
                    <li><a href="echarts_funnels_chords.html">Funnels and chords</a></li>
                    <li><a href="echarts_candlesticks_others.html">Candlesticks and others</a></li>
                    <li><a href="echarts_combinations.html">Chart combinations</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-statistics"></i> <span>D3 library</span></a>
                <ul>
                    <li><a href="d3_lines_basic.html">Simple lines</a></li>
                    <li><a href="d3_lines_advanced.html">Advanced lines</a></li>
                    <li><a href="d3_bars_basic.html">Simple bars</a></li>
                    <li><a href="d3_bars_advanced.html">Advanced bars</a></li>
                    <li><a href="d3_pies.html">Pie charts</a></li>
                    <li><a href="d3_circle_diagrams.html">Circle diagrams</a></li>
                    <li><a href="d3_tree.html">Tree layout</a></li>
                    <li><a href="d3_other.html">Other charts</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-stats-dots"></i> <span>Dimple library</span></a>
                <ul>
                    <li>
                        <a href="#">Line charts</a>
                        <ul>
                            <li><a href="dimple_lines_horizontal.html">Horizontal orientation</a></li>
                            <li><a href="dimple_lines_vertical.html">Vertical orientation</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Bar charts</a>
                        <ul>
                            <li><a href="dimple_bars_horizontal.html">Horizontal orientation</a></li>
                            <li><a href="dimple_bars_vertical.html">Vertical orientation</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Area charts</a>
                        <ul>
                            <li><a href="dimple_area_horizontal.html">Horizontal orientation</a></li>
                            <li><a href="dimple_area_vertical.html">Vertical orientation</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="#">Step charts</a>
                        <ul>
                            <li><a href="dimple_step_horizontal.html">Horizontal orientation</a></li>
                            <li><a href="dimple_step_vertical.html">Vertical orientation</a></li>
                        </ul>
                    </li>
                    <li><a href="dimple_pies.html">Pie charts</a></li>
                    <li><a href="dimple_rings.html">Ring charts</a></li>
                    <li><a href="dimple_scatter.html">Scatter charts</a></li>
                    <li><a href="dimple_bubble.html">Bubble charts</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-stats-bars"></i> <span>C3 library</span></a>
                <ul>
                    <li><a href="c3_lines_areas.html">Lines and areas</a></li>
                    <li><a href="c3_bars_pies.html">Bars and pies</a></li>
                    <li><a href="c3_advanced.html">Advanced examples</a></li>
                    <li><a href="c3_axis.html">Chart axis</a></li>
                    <li><a href="c3_grid.html">Grid options</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-google"></i> <span>Google visualization</span></a>
                <ul>
                    <li><a href="google_lines.html">Line charts</a></li>
                    <li><a href="google_bars.html">Bar charts</a></li>
                    <li><a href="google_pies.html">Pie charts</a></li>
                    <li><a href="google_scatter_bubble.html">Bubble &amp; scatter charts</a></li>
                    <li><a href="google_other.html">Other charts</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-map5"></i> <span>Maps integration</span></a>
                <ul>
                    <li>
                        <a href="#">Google maps</a>
                        <ul>
                            <li><a href="maps_google_basic.html">Basics</a></li>
                            <li><a href="maps_google_controls.html">Controls</a></li>
                            <li><a href="maps_google_markers.html">Markers</a></li>
                            <li><a href="maps_google_drawings.html">Map drawings</a></li>
                            <li><a href="maps_google_layers.html">Layers</a></li>
                        </ul>
                    </li>
                    <li><a href="maps_vector.html">Vector maps</a></li>
                </ul>
            </li>
            <!-- /data visualization -->

            <!-- Extensions -->
            <li class="navigation-header"><span>Extensions</span> <i class="icon-menu" title="Extensions"></i></li>
            <li>
                <a href="#"><i class="icon-spinner10 spinner"></i> <span>Velocity animations</span></a>
                <ul>
                    <li><a href="extension_velocity_basic.html">Basic usage</a></li>
                    <li><a href="extension_velocity_ui.html">UI pack effects</a></li>
                    <li><a href="extension_velocity_examples.html">Advanced examples</a></li>
                </ul>
            </li>
            <li><a href="extension_blockui.html"><i class="icon-history"></i> <span>Block UI</span></a></li>
            <li>
                <a href="#"><i class="icon-upload"></i> <span>File uploaders</span></a>
                <ul>
                    <li><a href="uploader_plupload.html">Plupload</a></li>
                    <li><a href="uploader_bootstrap.html">Bootstrap file uploader</a></li>
                    <li><a href="uploader_dropzone.html">Dropzone</a></li>
                </ul>
            </li>
            <li><a href="extension_image_cropper.html"><i class="icon-crop2"></i> <span>Image cropper</span></a></li>
            <li>
                <a href="#"><i class="icon-calendar3"></i> <span>Event calendars</span></a>
                <ul>
                    <li><a href="extension_fullcalendar_views.html">Basic views</a></li>
                    <li><a href="extension_fullcalendar_styling.html">Event styling</a></li>
                    <li><a href="extension_fullcalendar_formats.html">Language and time</a></li>
                    <li><a href="extension_fullcalendar_advanced.html">Advanced usage</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-sphere"></i> <span>Internationalization</span></a>
                <ul>
                    <li><a href="internationalization_switch_direct.html">Direct translation</a></li>
                    <li><a href="internationalization_switch_query.html">Querystring parameter</a></li>
                    <li><a href="internationalization_on_init.html">Set language on init</a></li>
                    <li><a href="internationalization_after_init.html">Set language after init</a></li>
                    <li><a href="internationalization_fallback.html">Language fallback</a></li>
                    <li><a href="internationalization_callbacks.html">Callbacks</a></li>
                </ul>
            </li>
            <!-- /extensions -->

            <!-- Tables -->
            <li class="navigation-header"><span>Tables</span> <i class="icon-menu" title="Tables"></i></li>
            <li>
                <a href="#"><i class="icon-table2"></i> <span>Basic tables</span></a>
                <ul>
                    <li><a href="table_basic.html">Basic examples</a></li>
                    <li><a href="table_sizing.html">Table sizing</a></li>
                    <li><a href="table_borders.html">Table borders</a></li>
                    <li><a href="table_styling.html">Table styling</a></li>
                    <li><a href="table_elements.html">Table elements</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-grid7"></i> <span>Data tables</span></a>
                <ul>
                    <li><a href="datatable_basic.html">Basic initialization</a></li>
                    <li><a href="datatable_styling.html">Basic styling</a></li>
                    <li><a href="datatable_advanced.html">Advanced examples</a></li>
                    <li><a href="datatable_sorting.html">Sorting options</a></li>
                    <li><a href="datatable_api.html">Using API</a></li>
                    <li><a href="datatable_data_sources.html">Data sources</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-alignment-unalign"></i> <span>Data tables extensions</span></a>
                <ul>
                    <li><a href="datatable_extension_reorder.html">Columns reorder</a></li>
                    <li><a href="datatable_extension_fixed_columns.html">Fixed columns</a></li>
                    <li><a href="datatable_extension_colvis.html">Columns visibility</a></li>
                    <li><a href="datatable_extension_tools.html">Table tools</a></li>
                    <li><a href="datatable_extension_scroller.html">Scroller</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-versions"></i> <span>Responsive options</span></a>
                <ul>
                    <li><a href="table_responsive.html">Responsive basic tables</a></li>
                    <li><a href="datatable_responsive.html">Responsive data tables</a></li>
                </ul>
            </li>
            <!-- /tables -->

            <!-- Page kits -->
            <li class="navigation-header"><span>Page kits</span> <i class="icon-menu" title="Page kits"></i></li>
            <li>
                <a href="#"><i class="icon-task"></i> <span>Task manager</span></a>
                <ul>
                    <li><a href="task_manager_grid.html">Task grid</a></li>
                    <li><a href="task_manager_list.html">Task list</a></li>
                    <li><a href="task_manager_detailed.html">Task detailed</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-cash3"></i> <span>Invoicing</span></a>
                <ul>
                    <li><a href="invoice_template.html">Invoice template</a></li>
                    <li><a href="invoice_grid.html">Invoice grid</a></li>
                    <li><a href="invoice_archive.html">Invoice archive</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-people"></i> <span>User pages</span></a>
                <ul>
                    <li><a href="user_pages_cards.html">User cards</a></li>
                    <li><a href="user_pages_list.html">User list</a></li>
                    <li><a href="user_pages_profile.html">Simple profile</a></li>
                    <li><a href="user_pages_profile_cover.html">Profile with cover</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-user-plus"></i> <span>Login &amp; registration</span></a>
                <ul>
                    <li><a href="login_simple.html">Simple login</a></li>
                    <li><a href="login_advanced.html">More login info</a></li>
                    <li><a href="login_registration.html">Simple registration</a></li>
                    <li><a href="login_registration_advanced.html">More registration info</a></li>
                    <li><a href="login_unlock.html">Unlock user</a></li>
                    <li><a href="login_password_recover.html">Reset password</a></li>
                    <li><a href="login_hide_navbar.html">Hide navbar</a></li>
                    <li><a href="login_transparent.html">Transparent box</a></li>
                    <li><a href="login_background.html">Background option</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-magazine"></i> <span>Timelines</span></a>
                <ul>
                    <li><a href="timelines_left.html">Left timeline</a></li>
                    <li><a href="timelines_right.html">Right timeline</a></li>
                    <li><a href="timelines_center.html">Centered timeline</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-lifebuoy"></i> <span>Support</span></a>
                <ul>
                    <li><a href="support_conversation_layouts.html">Conversation layouts</a></li>
                    <li><a href="support_conversation_options.html">Conversation options</a></li>
                    <li><a href="support_knowledgebase.html">Knowledgebase</a></li>
                    <li><a href="support_faq.html">FAQ page</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-search4"></i> <span>Search</span></a>
                <ul>
                    <li><a href="search_basic.html">Basic search results</a></li>
                    <li><a href="search_users.html">User search results</a></li>
                    <li><a href="search_images.html">Image search results</a></li>
                    <li><a href="search_videos.html">Video search results</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-images2"></i> <span>Gallery</span></a>
                <ul>
                    <li><a href="gallery_grid.html">Media grid</a></li>
                    <li><a href="gallery_titles.html">Media with titles</a></li>
                    <li><a href="gallery_description.html">Media with description</a></li>
                    <li><a href="gallery_library.html">Media library</a></li>
                </ul>
            </li>
            <li>
                <a href="#"><i class="icon-warning"></i> <span>Error pages</span></a>
                <ul>
                    <li><a href="error_403.html">Error 403</a></li>
                    <li><a href="error_404.html">Error 404</a></li>
                    <li><a href="error_405.html">Error 405</a></li>
                    <li><a href="error_500.html">Error 500</a></li>
                    <li><a href="error_503.html">Error 503</a></li>
                    <li><a href="error_offline.html">Offline page</a></li>
                </ul>
            </li>--%>
            <!-- /page kits -->

        </ul>
    </div>
</div>
