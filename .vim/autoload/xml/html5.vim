" Vim completion for HTML5 data file
" Language:       HTML5
" Maintainer:     othree <othree@gmail.com>
" Last Change:    2011 Apr 9


" Lang Tag: {{{
" Ref: http://www.iana.org/assignments/language-subtag-registry
" Version: 2010/09/07
" Description: only get two-letter language tag
let lang_tag = ['zh-Hans', 'en']
" }}}

" Charset: {{{
" Ref: http://www.iana.org/assignments/character-sets 
" Version: 2010/09/07
let charset = ['UTF-8', 'GBK', 'GB18030']
" }}}

" Attributes_and_Settings: {{{
let core_attributes = {'accesskey': [], 'class': [], 'contenteditable': ['true', 'false', ''], 'contextmenu': [], 'dir': ['ltr', 'rtl'], 'draggable': ['true', 'false'], 'hidden': ['hidden', ''], 'id': [], 'lang': lang_tag, 'spellcheck': ['true', 'false', ''], 'style': [], 'tabindex': [], 'title': []}
let xml_attributes = {'xml:lang': lang_tag, 'xml:space': ['preserve'], 'xml:base': [], 'xmlns': []}

let body_attributes = {}
let global_attributes = extend(core_attributes, xml_attributes)
if !exists('g:event_handler_attributes_complete')
    let g:event_handler_attributes_complete = 1
endif

" http://dev.w3.org/html5/spec/Overview.html#attributes-1
let attributes_value = {
    \ 'accept': ['MIME', ''],
    \ 'accept-charset': ['Charset', ''],
    \ 'accesskey': ['Character', ''],
    \ 'action': ['URL', ''],
    \ 'alt': ['Text', ''],
    \ 'async': ['Bool', ''],
    \ 'autocomplete': ['on/off', ''],
    \ 'autofocus': ['Bool', ''],
    \ 'autoplay': ['Bool', ''],
    \ 'border': ['1', ''],
    \ 'challenge': ['Text', ''],
    \ 'charset': ['Charset', ''],
    \ 'checked': ['Bool', ''],
    \ 'cite': ['URL', ''],
    \ 'class': ['*Token', ''],
    \ 'cols': ['Int', ''],
    \ 'colspan': ['Int', ''],
    \ 'content': ['Text', ''],
    \ 'contenteditable': ['true/false', ''],
    \ 'contextmenu': ['ID', ''],
    \ 'controls': ['Bool', ''],
    \ 'coords': ['*Int', ''],
    \ 'data': ['URL', ''],
    \ 'datetime': ['Datetime', ''],
    \ 'defer': ['Bool', ''],
    \ 'dir': ['ltr/rtl', ''],
    \ 'disabled': ['Bool', ''],
    \ 'draggable': ['true/false', ''],
    \ 'enctype': ['Token', ''],
    \ 'for': ['ID', ''],
    \ 'form': ['ID', ''],
    \ 'formaction': ['URL', ''],
    \ 'formenctype': ['Token', ''],
    \ 'formmethod': ['HTTP Method', ''],
    \ 'formnovalidate': ['Bool', ''],
    \ 'formtarget': ['Name', ''],
    \ 'headers': ['*ID', ''],
    \ 'height': ['Int', ''],
    \ 'hidden': ['Bool', ''],
    \ 'high': ['Number', ''],
    \ 'href': ['URL', ''],
    \ 'hreflang': ['Lang Tag', ''],
    \ 'http-equiv': ['Text', ''],
    \ 'icon': ['URL', ''],
    \ 'id': ['Text', ''],
    \ 'ismap': ['Bool', ''],
    \ 'keytype': ['Text', ''],
    \ 'label': ['Text', ''],
    \ 'lang': ['Lang Tag', ''],
    \ 'list': ['ID', ''],
    \ 'loop': ['Bool', ''],
    \ 'low': ['Number', ''],
    \ 'manifest': ['URL', ''],
    \ 'max': ['Number', ''],
    \ 'maxlength': ['Int', ''],
    \ 'media': ['Text', ''],
    \ 'method': ['HTTP Method', ''],
    \ 'min': ['Number', ''],
    \ 'multiple': ['Bool', ''],
    \ 'name': ['Text', ''],
    \ 'novalidate': ['Bool', ''],
    \ 'open': ['Bool', ''],
    \ 'optimum': ['Number', ''],
    \ 'pattern': ['Pattern', ''],
    \ 'placeholder': ['Text', ''],
    \ 'poster': ['URL', ''],
    \ 'preload': ['Token', ''],
    \ 'pubdate': ['Bool', ''],
    \ 'radiogroup': ['Text', ''],
    \ 'readonly': ['Bool', ''],
    \ 'rel': ['*Token', ''],
    \ 'required': ['Bool', ''],
    \ 'reversed': ['Bool', ''],
    \ 'rows': ['Int', ''],
    \ 'rowspan': ['Int', ''],
    \ 'sandbox': ['*Token', ''],
    \ 'spellcheck': ['true/false', ''],
    \ 'scope': ['Token', ''],
    \ 'scoped': ['Bool', ''],
    \ 'seamless': ['Bool', ''],
    \ 'selected': ['Bool', ''],
    \ 'shape': ['Token', ''],
    \ 'size': ['Int', ''],
    \ 'sizes': ['*Token', ''],
    \ 'span': ['Int', ''],
    \ 'src': ['Int', ''],
    \ 'srcdoc': ['Document', ''],
    \ 'start': ['Int', ''],
    \ 'step': ['Int', ''],
    \ 'style': ['Style', ''],
    \ 'summary': ['Text', ''],
    \ 'tabindex': ['Int', ''],
    \ 'target': ['Name', ''],
    \ 'title': ['Text', ''],
    \ 'type': ['Token', ''],
    \ 'usemap': ['Name', ''],
    \ 'value': ['Text', ''],
    \ 'width': ['Int', ''],
    \ 'wrap': ['soft/hard', ''],
    \ 'xml:lang': ['Lang tag', ''],
    \ 'xml:base': ['*URI', ''],
    \ 'xml:space': ['preserve', ''],
    \ 'xmlns': ['URI', ''],
    \ 'version': ['HTML+RDFa 1.1', ''],
    \ 'role': ['*Token', '']
\ }

if g:event_handler_attributes_complete == 1
    let event_handler_attributes = {'onabort': [], 'onblur': [], 'oncanplay': [], 'oncanplaythrough': [], 'onchange': [], 'onclick': [], 'oncontextmenu': [], 'ondblclick': [], 'ondrag': [], 'ondragend': [], 'ondragenter': [], 'ondragleave': [], 'ondragover': [], 'ondragstart': [], 'ondrop': [], 'ondurationchange': [], 'onemptied': [], 'onended': [], 'onerror': [], 'onfocus': [], 'onformchange': [], 'onforminput': [], 'oninput': [], 'oninvalid': [], 'onkeydown': [], 'onkeypress': [], 'onkeyup': [], 'onload': [], 'onloadeddata': [], 'onloadedmetadata': [], 'onloadstart': [], 'onmousedown': [], 'onmousemove': [], 'onmouseout': [], 'onmouseover': [], 'onmouseup': [], 'onmousewheel': [], 'onpause': [], 'onplay': [], 'onplaying': [], 'onprogress': [], 'onratechange': [], 'onreadystatechange': [], 'onscroll': [], 'onseeked': [], 'onseeking': [], 'onselect': [], 'onshow': [], 'onstalled': [], 'onsubmit': [], 'onsuspend': [], 'ontimeupdate': [], 'onvolumechange': [], 'onwaiting': []}
    let global_attributes = extend(global_attributes, event_handler_attributes)
    
    let body_attributes = {'onafterprint': [], 'onbeforeprint': [], 'onbeforeunload': [], 'onblur': [], 'onerror': [], 'onfocus': [], 'onhashchange': [], 'onload': [], 'onmessage': [], 'onoffline': [], 'ononline': [], 'onpopstate': [], 'onredo': [], 'onresize': [], 'onstorage': [], 'onundo': [], 'onunload': []}

    let event_attributes_value = {
        \ 'onabort': ['Script', ''],
        \ 'onafterprint': ['Script', ''],
        \ 'onbeforeprint': ['Script', ''],
        \ 'onbeforeunload': ['Script', ''],
        \ 'onblur': ['Script', ''],
        \ 'oncanplay': ['Script', ''],
        \ 'oncanplaythrough': ['Script', ''],
        \ 'onchange': ['Script', ''],
        \ 'onclick': ['Script', ''],
        \ 'oncontextmenu': ['Script', ''],
        \ 'ondblclick': ['Script', ''],
        \ 'ondrag': ['Script', ''],
        \ 'ondragend': ['Script', ''],
        \ 'ondragenter': ['Script', ''],
        \ 'ondragleave': ['Script', ''],
        \ 'ondragover': ['Script', ''],
        \ 'ondragstart': ['Script', ''],
        \ 'ondrop': ['Script', ''],
        \ 'ondurationchange': ['Script', ''],
        \ 'onemptied': ['Script', ''],
        \ 'onended': ['Script', ''],
        \ 'onerror': ['Script', ''],
        \ 'onfocus': ['Script', ''],
        \ 'onformchange': ['Script', ''],
        \ 'onforminput': ['Script', ''],
        \ 'onhashchange': ['Script', ''],
        \ 'oninput': ['Script', ''],
        \ 'oninvalid': ['Script', ''],
        \ 'onkeydown': ['Script', ''],
        \ 'onkeypress': ['Script', ''],
        \ 'onkeyup': ['Script', ''],
        \ 'onload': ['Script', ''],
        \ 'onloadeddata': ['Script', ''],
        \ 'onloadedmetadata': ['Script', ''],
        \ 'onloadstart': ['Script', ''],
        \ 'onmessage': ['Script', ''],
        \ 'onmousedown': ['Script', ''],
        \ 'onmousemove': ['Script', ''],
        \ 'onmouseout': ['Script', ''],
        \ 'onmouseover': ['Script', ''],
        \ 'onmouseup': ['Script', ''],
        \ 'onmousewheel': ['Script', ''],
        \ 'onoffline': ['Script', ''],
        \ 'ononline': ['Script', ''],
        \ 'onpagehide': ['Script', ''],
        \ 'onpageshow': ['Script', ''],
        \ 'onpause': ['Script', ''],
        \ 'onplay': ['Script', ''],
        \ 'onplaying': ['Script', ''],
        \ 'onpopstate': ['Script', ''],
        \ 'onprogress': ['Script', ''],
        \ 'onratechange': ['Script', ''],
        \ 'onreadystatechange': ['Script', ''],
        \ 'onredo': ['Script', ''],
        \ 'onresize': ['Script', ''],
        \ 'onscroll': ['Script', ''],
        \ 'onseeked': ['Script', ''],
        \ 'onseeking': ['Script', ''],
        \ 'onselect': ['Script', ''],
        \ 'onshow': ['Script', ''],
        \ 'onstalled': ['Script', ''],
        \ 'onstorage': ['Script', ''],
        \ 'onsubmit': ['Script', ''],
        \ 'onsuspend': ['Script', ''],
        \ 'ontimeupdate': ['Script', ''],
        \ 'onundo': ['Script', ''],
        \ 'onunload': ['Script', ''],
        \ 'onvolumechange': ['Script', ''],
        \ 'onwaiting': ['Script', '']
    \ }

    let attributes_value = extend(attributes_value, event_attributes_value)
endif
if !exists('g:rdfa_attributes_complete')
    let g:rdfa_attributes_complete = 1
endif
if g:rdfa_attributes_complete == 1
    " http://www.w3.org/TR/rdfa-syntax/#s_metaAttributes
    " http://www.w3.org/TR/rdfa-core/#s_syntax
    let relrev = ['chapter', 'contents', 'copyright', 'first', 'glossary', 'help', 'icon', 'index', 'last', 'license', 'meta', 'next', 'p3pv1', 'prev', 'role', 'section', 'stylesheet', 'subsection', 'start', 'top', 'up']
    let rdfa_attributes = {'about': [], 'content': [], 'datatype': [], 'prefix': [], 'profile': [], 'property': [], 'resource': [], 'rel': relrev, 'rev': relrev, 'typeof': [], 'vocab': []}
    let global_attributes = extend(global_attributes, rdfa_attributes)

    let rdfa_attributes_value = {
        \ 'about': ['SafeCURIEorCURIEorURI', ''],
        \ 'content': ['CDATA String', ''],
        \ 'datatype': ['CURIE', ''],
        \ 'prefix': ['*Prefix', ''],
        \ 'profile': ['String', ''],
        \ 'property': ['*TERMorCURIEorAbsURIs', ''],
        \ 'resource': ['URIorSafeCURIE', ''],
        \ 'rel': ['*TERMorCURIEorAbsURIs', ''],
        \ 'rev': ['*TERMorCURIEorAbsURIs', ''],
        \ 'typeof': ['*TERMorCURIEorAbsURIs', ''],
        \ 'vocab': ['URI', '']
    \ }
    let attributes_value = extend(attributes_value, rdfa_attributes_value)
endif
if !exists('g:microdata_attributes_complete')
    let g:microdata_attributes_complete = 1
endif
if g:microdata_attributes_complete == 1
    let microdata_attributes = {'itemid': [], 'itemscope': ['itemscope', ''], 'itemtype': [], 'itemprop': [], 'itemref': []}
    let global_attributes = extend(global_attributes, microdata_attributes)

    let microdata_attributes_value = {
        \ 'itemid': ['URI', ''],
        \ 'itemscope': ['Bool', ''],
        \ 'itemtype': ['URI', ''],
        \ 'itemprop': ['String', ''],
        \ 'itemref': ['*ID', '']
    \ }
    let attributes_value = extend(attributes_value, microdata_attributes_value)
endif
" }}}

" WAI_ARIA: {{{
" Ref: http://www.w3.org/TR/wai-aria/
" Version: Draft 15 December 2009
if !exists('g:aria_attributes_complete')
    let g:aria_attributes_complete = 1
endif
if g:aria_attributes_complete == 1
    " Ref: http://www.w3.org/TR/wai-aria/roles
    " Version: Draft 15 December 2009
    let widget_role = ['alert', 'alertdialog', 'button', 'checkbox', 'combobox', 'dialog', 'gridcell', 'link', 'log', 'marquee', 'menuitem', 'menuitemcheckbox', 'menuitemradio', 'option', 'progressbar', 'radio', 'radiogroup', 'scrollbar', 'slider', 'spinbutton', 'status', 'tab', 'tabpanel', 'textbox', 'timer', 'tooltip', 'treeitem', 'combobox', 'grid', 'listbox', 'menu', 'menubar', 'radiogroup', 'tablist', 'tree', 'treegrid']
    let document_structure = ['article', 'columnheader', 'definition', 'directory', 'document', 'group', 'heading', 'img', 'list', 'listitem', 'math', 'note', 'presentation', 'region', 'row', 'rowheader', 'separator']
    let landmark_role = ['application', 'banner', 'complementary', 'contentinfo', 'form', 'main', 'navigation', 'search']
    let role = extend(widget_role, document_structure)
    let role = extend(role, landmark_role)
    let global_attributes = extend(global_attributes, {'role': role})
endif
" }}}

" Ref: http://dev.w3.org/html5/markup/
" Version: Draft 05 April 2011
let phrasing_elements = ['a', 'em', 'strong', 'small', 'mark', 'abbr', 'dfn', 'i', 'b', 'u', 'code', 'var', 'samp', 'kbd', 'sup', 'sub', 'q', 'cite', 'span', 'bdo', 'bdi', 'br', 'wbr', 'ins', 'del', 'img', 'embed', 'object', 'iframe', 'map', 'area', 'script', 'noscript', 'ruby', 'video', 'audio', 'input', 'textarea', 'select', 'button', 'label', 'output', 'datalist', 'keygen', 'progress', 'command', 'canvas', 'time', 'meter']

let metadata_elements = ['link', 'style', 'meta', 'script', 'noscript', 'command']

let flow_elements = phrasing_elements + ['p', 'hr', 'pre', 'ul', 'ol', 'dl', 'div', 'h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'hgroup', 'address', 'blockquote', 'ins', 'del', 'object', 'map', 'noscript', 'section', 'nav', 'article', 'aside', 'header', 'footer', 'video', 'audio', 'figure', 'table', 'form', 'fieldset', 'menu', 'canvas', 'details']

" http://dev.w3.org/html5/spec/Overview.html#linkTypes
let linktypes = ['alternate', 'author', 'bookmark', 'external', 'help', 'icon', 'license', 'next', 'nofollow', 'noreferrer', 'pingback', 'prefetch', 'prev', 'search', 'stylesheet', 'sidebar', 'tag']
" http://googlewebmastercentral.blogspot.com/2009/02/specify-your-canonical.html
let linkreltypes = linktypes + ['canonical']

" a and button are special elements for interactive, some element can't be its descendent
let abutton_dec = 'details\\|embed\\|iframe\\|keygen\\|label\\|menu\\|select\\|textarea'



let g:xmldata_html5 = {
\ 'vimxmlentities': ['AElig', 'Aacute', 'Acirc', 'Agrave', 'Alpha', 'Aring', 'Atilde', 'Auml', 'Beta', 'Ccedil', 'Chi', 'Dagger', 'Delta', 'ETH', 'Eacute', 'Ecirc', 'Egrave', 'Epsilon', 'Eta', 'Euml', 'Gamma', 'Iacute', 'Icirc', 'Igrave', 'Iota', 'Iuml', 'Kappa', 'Lambda', 'Mu', 'Ntilde', 'Nu', 'OElig', 'Oacute', 'Ocirc', 'Ograve', 'Omega', 'Omicron', 'Oslash', 'Otilde', 'Ouml', 'Phi', 'Pi', 'Prime', 'Psi', 'Rho', 'Scaron', 'Sigma', 'THORN', 'Tau', 'Theta', 'Uacute', 'Ucirc', 'Ugrave', 'Upsilon', 'Uuml', 'Xi', 'Yacute', 'Yuml', 'Zeta', 'aacute', 'acirc', 'acute', 'aelig', 'agrave', 'alefsym', 'alpha', 'amp', 'and', 'ang', 'apos', 'aring', 'asymp', 'atilde', 'auml', 'bdquo', 'beta', 'brvbar', 'bull', 'cap', 'ccedil', 'cedil', 'cent', 'chi', 'circ', 'clubs', 'cong', 'copy', 'crarr', 'cup', 'curren', 'dArr', 'dagger', 'darr', 'deg', 'delta', 'diams', 'divide', 'eacute', 'ecirc', 'egrave', 'empty', 'emsp', 'ensp', 'epsilon', 'equiv', 'eta', 'eth', 'euml', 'euro', 'exist', 'fnof', 'forall', 'frac12', 'frac14', 'frac34', 'frasl', 'gamma', 'ge', 'gt', 'hArr', 'harr', 'hearts', 'hellip', 'iacute', 'icirc', 'iexcl', 'igrave', 'image', 'infin', 'int', 'iota', 'iquest', 'isin', 'iuml', 'kappa', 'lArr', 'lambda', 'lang', 'laquo', 'larr', 'lceil', 'ldquo', 'le', 'lfloor', 'lowast', 'loz', 'lrm', 'lsaquo', 'lsquo', 'lt', 'macr', 'mdash', 'micro', 'middot', 'minus', 'mu', 'nabla', 'nbsp', 'ndash', 'ne', 'ni', 'not', 'notin', 'nsub', 'ntilde', 'nu', 'oacute', 'ocirc', 'oelig', 'ograve', 'oline', 'omega', 'omicron', 'oplus', 'or', 'ordf', 'ordm', 'oslash', 'otilde', 'otimes', 'ouml', 'para', 'part', 'permil', 'perp', 'phi', 'pi', 'piv', 'plusmn', 'pound', 'prime', 'prod', 'prop', 'psi', 'quot', 'rArr', 'radic', 'rang', 'raquo', 'rarr', 'rceil', 'rdquo', 'real', 'reg', 'rfloor', 'rho', 'rlm', 'rsaquo', 'rsquo', 'sbquo', 'scaron', 'sdot', 'sect', 'shy', 'sigma', 'sigmaf', 'sim', 'spades', 'sub', 'sube', 'sum', 'sup', 'sup1', 'sup2', 'sup3', 'supe', 'szlig', 'tau', 'there4', 'theta', 'thetasym', 'thinsp', 'thorn', 'tilde', 'times', 'trade', 'uArr', 'uacute', 'uarr', 'ucirc', 'ugrave', 'uml', 'upsih', 'upsilon', 'uuml', 'weierp', 'xi', 'yacute', 'yen', 'yuml', 'zeta', 'zwj', 'zwnj'],
\ 'vimxmlroot': ['html'],
\ 'a': [
    \ filter(copy(flow_elements), "!(v:val =~ '". abutton_dec ."')"),
    \ extend(copy(global_attributes), {'name': [], 'href': [], 'target': [], 'rel': linktypes, 'hreflang': lang_tag, 'media': [], 'type': []}) 
\ ],
\ 'abbr': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'address': [
    \ filter(copy(flow_elements), "!(v:val =~ 'address\\|nav\\|article\\|header\\|footer\\|section\\|aside\\|h1\\|h2\\|h3\\|h4\\|h5\\|h6')"),
    \ global_attributes
\ ],
\ 'area': [
    \ [],
    \ extend(copy(global_attributes), {'alt': [], 'href': [], 'target': [], 'rel': linktypes, 'media': [], 'hreflang': lang_tag, 'type': [], 'shape': ['rect', 'circle', 'poly', 'default'], 'coords': []})
\ ],
\ 'article': [
    \ flow_elements + ['style'],
    \ global_attributes
\ ],
\ 'aside': [
    \ flow_elements + ['style'],
    \ global_attributes
\ ],
\ 'audio': [
    \ flow_elements + ['source', 'track'],
    \ extend(copy(global_attributes), {'autoplay': ['autoplay', ''], 'preload': ['none', 'metadata', 'auto', ''], 'controls': ['controls', ''], 'loop': ['loop', ''], 'src': []})
\ ],
\ 'b': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'base': [
    \ [],
    \ extend(copy(global_attributes), {'href': [], 'target': []})
\ ],
\ 'bdo': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'bdi': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'blockquote': [
    \ flow_elements,
    \ extend(copy(global_attributes), {'cite': []})
\ ],
\ 'body': [
    \ flow_elements,
    \ extend(copy(global_attributes), body_attributes)
\ ],
\ 'br': [
    \ [],
    \ global_attributes
\ ],
\ 'button': [
    \ filter(copy(phrasing_elements), "!(v:val =~ '". abutton_dec ."')"),
    \ extend(copy(global_attributes), {'type': ['submit', 'reset', 'button'], 'name': [], 'disabled': ['disabled', ''], 'form': [], 'value': [], 'formaction': [], 'autofocus': ['autofocus', ''], 'formenctype': ['application/x-www-form-urlencoded', 'multipart/form-data', 'text/plain'], 'formmethod': ['get', 'post', 'put', 'delete'], 'formtarget': [], 'formnovalidate': ['formnovalidate', '']})
\ ],
\ 'canvas': [
    \ flow_elements,
    \ extend(copy(global_attributes), {'height': [], 'width': []})
\ ],
\ 'caption': [
    \ filter(copy(flow_elements), "!(v:val =~ 'table')"),
    \ global_attributes
\ ],
\ 'cite': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'code': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'col': [
    \ [],
    \ extend(copy(global_attributes), {'span': []})
\ ],
\ 'colgroup': [
    \ [],
    \ extend(copy(global_attributes), {'span': []})
\ ],
\ 'command': [
    \ ['col'],
    \ extend(copy(global_attributes), {'type': ['command', 'radio', 'checkbox'], 'radiogroup': [], 'checked': ['checked', ''], 'label': [], 'icon': [], 'disabled': ['disabled', '']})
\ ],
\ 'datalist': [
    \ phrasing_elements + ['option'],
    \ global_attributes
\ ],
\ 'dd': [
    \ flow_elements,
    \ global_attributes
\ ],
\ 'del': [
    \ flow_elements,
    \ extend(copy(global_attributes), {'cite': [], 'datetime': []})
\ ],
\ 'details': [
    \ flow_elements + ['summary'],
    \ extend(copy(global_attributes), {'open': ['open', '']})
\ ],
\ 'dfn': [
    \ filter(copy(phrasing_elements), "!(v:val =~ 'dfn')"),
    \ global_attributes
\ ],
\ 'div': [
    \ flow_elements + ['style'],
    \ global_attributes
\ ],
\ 'dl': [
    \ ['dt', 'dd'],
    \ global_attributes
\ ],
\ 'dt': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'em': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'embed': [
    \ [],
    \ extend(copy(global_attributes), {'src': [], 'type': [], 'height': [], 'width': []})
\ ],
\ 'fieldset': [
    \ flow_elements + ['legend'],
    \ extend(copy(global_attributes), {'name': [], 'disabled': ['disabled', ''], 'form': []})
\ ],
\ 'figcaption': [
    \ flow_elements,
    \ global_attributes
\ ],
\ 'figure': [
    \ flow_elements + ['figcaption'],
    \ global_attributes
\ ],
\ 'footer': [
    \ filter(copy(flow_elements), "!(v:val =~ 'address\\|header\\|footer')"),
    \ global_attributes
\ ],
\ 'form': [
    \ flow_elements,
    \ extend(copy(global_attributes), {'name': [], 'action': [], 'enctype': ['application/x-www-form-urlencoded', 'multipart/form-data', 'text/plain'], 'method': ['get', 'post', 'put', 'delete'], 'target': [], 'novalidate': ['novalidate', ''], 'accept-charset': charset, 'autocomplete': ['on', 'off']})
\ ],
\ 'h1': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'h2': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'h3': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'h4': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'h5': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'h6': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'head': [
    \ metadata_elements + ['title', 'base'],
    \ global_attributes
\ ],
\ 'header': [
    \ filter(copy(flow_elements), "!(v:val =~ 'address\\|header\\|footer')"),
    \ global_attributes
\ ],
\ 'hgroup': [
    \ ['h1', 'h2', 'h3', 'h4', 'h5', 'h6'],
    \ global_attributes
\ ],
\ 'hr': [
    \ [],
    \ global_attributes
\ ],
\ 'html': [
    \ ['head', 'body'],
    \ extend(copy(global_attributes), {'manifest': [], 'version': ['HTML+RDFa 1.1']})
\ ],
\ 'i': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'iframe': [
    \ [],
    \ extend(copy(global_attributes), {'src': [], 'name': [], 'width': [], 'height': [], 'sandbox': ['allow-same-origin', 'allow-forms', 'allow-scripts'], 'seamless': ['seamless', '']})
\ ],
\ 'img': [
    \ [],
    \ extend(copy(global_attributes), {'src': [], 'alt': [], 'height': [], 'width': [], 'usemap': [], 'ismap': ['ismap', '']})
\ ],
\ 'input': [
    \ [],
    \ extend(copy(global_attributes), {'type': ['text', 'password', 'checkbox', 'radio', 'button', 'submit', 'reset', 'file', 'hidden', 'image', 'datetime', 'datetime-local', 'date', 'month', 'time', 'week', 'number', 'range', 'email', 'url', 'search', 'tel', 'color'], 'name': [], 'disabled': ['disabled', ''], 'form': [], 'maxlength': [], 'readonly': ['readonly', ''], 'size': [], 'value': [], 'autocomplete': ['on', 'off'], 'autofocus': ['autofocus', ''], 'list': [], 'pattern': [], 'required': ['required', ''], 'placeholder': [], 'checked': ['checked'], 'accept': [], 'multiple': ['multiple', ''], 'alt': [], 'src': [], 'height': [], 'width': [], 'min': [], 'max': [], 'step': [], 'formenctype': ['application/x-www-form-urlencoded', 'multipart/form-data', 'text/plain'], 'formmethod': ['get', 'post', 'put', 'delete'], 'formtarget': [], 'formnovalidate': ['formnovalidate', '']})
\ ],
\ 'ins': [
    \ flow_elements,
    \ extend(copy(global_attributes), {'cite': [], 'datetime': []})
\ ],
\ 'kbd': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'keygen': [
    \ [],
    \ extend(copy(global_attributes), {'challenge': [], 'keytype': ['rsa'], 'autofocus': ['autofocus', ''], 'name': [], 'disabled': ['disabled', ''], 'form': []})
\ ],
\ 'label': [
    \ filter(copy(phrasing_elements), "!(v:val =~ 'label')"),
    \ extend(copy(global_attributes), {'for': [], 'form': []})
\ ],
\ 'legend': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'li': [
    \ flow_elements,
    \ extend(copy(global_attributes), {'value': []})
\ ],
\ 'link': [
    \ [],
    \ extend(copy(global_attributes), {'href': [], 'rel': linkreltypes, 'hreflang': lang_tag, 'media': [], 'type': [], 'sizes': ['any']})
\ ],
\ 'map': [
    \ flow_elements,
    \ extend(copy(global_attributes), {'name': []})
\ ],
\ 'mark': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'menu': [
    \ flow_elements + ['li'],
    \ extend(copy(global_attributes), {'type': ['toolbar', 'context'], 'label': []})
\ ],
\ 'meta': [
    \ [],
    \ extend(copy(global_attributes), {'name': [], 'http-equiv': ['refresh', 'default-style', 'content-type'], 'content': [], 'charset': charset})
\ ],
\ 'meter': [
    \ phrasing_elements,
    \ extend(copy(global_attributes), {'value': [], 'min': [], 'low': [], 'high': [], 'max': [], 'optimum': []})
\ ],
\ 'nav': [
    \ flow_elements,
    \ global_attributes
\ ],
\ 'noscript': [
    \ flow_elements + ['link', 'meta', 'style'],
    \ global_attributes
\ ],
\ 'object': [
    \ flow_elements + ['param'],
    \ extend(copy(global_attributes), {'data': [], 'type': [], 'height': [], 'width': [], 'usemap': [], 'name': [], 'form': []})
\ ],
\ 'ol': [
    \ ['li'],
    \ extend(copy(global_attributes), {'start': [], 'reversed': ['reversed', '']})
\ ],
\ 'optgroup': [
    \ ['option'],
    \ extend(copy(global_attributes), {'label': [], 'disabled': ['disabled', '']})
\ ],
\ 'option': [
    \ [''],
    \ extend(copy(global_attributes), {'disabled': ['disabled', ''], 'selected': ['selected', ''], 'label': [], 'value': []})
\ ],
\ 'output': [
    \ phrasing_elements,
    \ extend(copy(global_attributes), {'name': [], 'form': [], 'for': []})
\ ],
\ 'p': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'param': [
    \ [],
    \ extend(copy(global_attributes), {'name': [], 'value': []})
\ ],
\ 'pre': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'progress': [
    \ filter(copy(phrasing_elements), "!(v:val =~ 'progress')"),
    \ extend(copy(global_attributes), {'value': [], 'max': []})
\ ],
\ 'q': [
    \ phrasing_elements,
    \ extend(copy(global_attributes), {'cite': []})
\ ],
\ 'rp': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'rt': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'ruby': [
    \ phrasing_elements + ['rp', 'rt'],
    \ global_attributes
\ ],
\ 'samp': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'script': [
    \ [],
    \ extend(copy(global_attributes), {'src': [], 'defer': ['defer', ''], 'async': ['async', ''], 'type': [], 'charset': charset})
\ ],
\ 'section': [
    \ flow_elements + ['style'],
    \ global_attributes
\ ],
\ 'select': [
    \ ['optgroup', 'option'],
    \ extend(copy(global_attributes), {'name': [], 'disabled': ['disabled', ''], 'form': [], 'size': [], 'multiple': ['multiple', '']})
\ ],
\ 'small': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'source': [
    \ [],
    \ extend(copy(global_attributes), {'src': [], 'type': ['audio/ogg', 'audio/mpeg', 'video/ogg', 'video/mp4', 'video/webm', ''], 'media': []})
\ ],
\ 'span': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'strong': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'style': [
    \ [],
    \ extend(copy(global_attributes), {'type': [], 'media': [], 'scoped': ['scoped', '']})
\ ],
\ 'sub': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'summary': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'sup': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'table': [
    \ ['caption', 'col', 'colgroup', 'thead', 'tfoot', 'tbody', 'tr'],
    \ extend(copy(global_attributes), {'border': []})
\ ],
\ 'tbody': [
    \ ['tr'],
    \ global_attributes
\ ],
\ 'td': [
    \ flow_elements,
    \ extend(copy(global_attributes), {'colspan': [], 'rowspan': [], 'headers': []})
\ ],
\ 'textarea': [
    \ [''],
    \ extend(copy(global_attributes), {'name': [], 'disabled': ['disabled', ''], 'form': [], 'readonly': ['readonly', ''], 'maxlength': [], 'autofocus': ['autofocus', ''], 'required': ['required', ''], 'placeholder': [], 'rows': [], 'wrap': ['hard', 'soft'], 'cols': []})
\ ],
\ 'tfoot': [
    \ ['tr'],
    \ global_attributes
\ ],
\ 'th': [
    \ phrasing_elements,
    \ extend(copy(global_attributes), {'scope': ['row', 'col', 'rowgroup', 'colgroup'], 'colspan': [], 'rowspan': [], 'headers': []})
\ ],
\ 'thead': [
    \ ['tr'],
    \ global_attributes
\ ],
\ 'time': [
    \ phrasing_elements,
    \ extend(copy(global_attributes), {'datetime': [], 'pubdate': ['pubdate', '']})
\ ],
\ 'title': [
    \ [''],
    \ global_attributes
\ ],
\ 'tr': [
    \ ['th', 'td'],
    \ global_attributes
\ ],
\ 'track': [
    \ [],
    \ extend(copy(global_attributes), {'kind': ['subtitles', 'captions', 'descriptions', 'chapters', 'metadata'], 'src': [], 'charset': charset, 'srclang': lang_tag, 'label': []})
\ ],
\ 'u': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'ul': [
    \ ['li'],
    \ global_attributes
\ ],
\ 'var': [
    \ phrasing_elements,
    \ global_attributes
\ ],
\ 'video': [
    \ flow_elements + ['source', 'track'],
    \ extend(copy(global_attributes), {'autoplay': ['autoplay', ''], 'preload': ['none', 'metadata', 'auto', ''], 'controls': ['controls', ''], 'loop': ['loop', ''], 'poster': [], 'height': [], 'width': [], 'src': []})
\ ],
\ 'wbr': [
    \ [],
    \ global_attributes
\ ],
\ 'vimxmlattrinfo' : attributes_value,
\ 'vimxmltaginfo': {
    \ 'area': ['/>', ''],
    \ 'base': ['/>', ''],
    \ 'br': ['/>', ''],
    \ 'col': ['/>', ''],
    \ 'command': ['/>', ''],
    \ 'embed': ['/>', ''],
    \ 'hr': ['/>', ''],
    \ 'img': ['/>', ''],
    \ 'input': ['/>', ''],
    \ 'keygen': ['/>', ''],
    \ 'link': ['/>', ''],
    \ 'meta': ['/>', ''],
    \ 'param': ['/>', ''],
    \ 'source': ['/>', ''],
    \ 'track': ['/>', ''],
    \ 'wbr': ['/>', ''],
\ },
\ }
