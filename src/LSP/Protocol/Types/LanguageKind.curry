-- NOTE: This file is generated automatically and should not be edited manually!
{-# OPTIONS_FRONTEND -Wno-unused-bindings -Wno-overlapping #-}
module LSP.Protocol.Types.LanguageKind where

import JSON.Data
import JSON.Pretty
import LSP.Utils.JSON

instance FromJSON LanguageKind where
  fromJSON j =
    do raw <- fromJSON j
       case raw :: String of
         "abap" -> Right LanguageKindABAP
         "bat" -> Right LanguageKindWindowsBat
         "bibtex" -> Right LanguageKindBibTeX
         "clojure" -> Right LanguageKindClojure
         "coffeescript" -> Right LanguageKindCoffeescript
         "c" -> Right LanguageKindC
         "cpp" -> Right LanguageKindCPP
         "csharp" -> Right LanguageKindCSharp
         "css" -> Right LanguageKindCSS
         "d" -> Right LanguageKindD
         "pascal" -> Right LanguageKindDelphi
         "diff" -> Right LanguageKindDiff
         "dart" -> Right LanguageKindDart
         "dockerfile" -> Right LanguageKindDockerfile
         "elixir" -> Right LanguageKindElixir
         "erlang" -> Right LanguageKindErlang
         "fsharp" -> Right LanguageKindFSharp
         "git-commit" -> Right LanguageKindGitCommit
         "rebase" -> Right LanguageKindGitRebase
         "go" -> Right LanguageKindGo
         "groovy" -> Right LanguageKindGroovy
         "handlebars" -> Right LanguageKindHandlebars
         "haskell" -> Right LanguageKindHaskell
         "html" -> Right LanguageKindHTML
         "ini" -> Right LanguageKindIni
         "java" -> Right LanguageKindJava
         "javascript" -> Right LanguageKindJavaScript
         "javascriptreact" -> Right LanguageKindJavaScriptReact
         "json" -> Right LanguageKindJSON
         "latex" -> Right LanguageKindLaTeX
         "less" -> Right LanguageKindLess
         "lua" -> Right LanguageKindLua
         "makefile" -> Right LanguageKindMakefile
         "markdown" -> Right LanguageKindMarkdown
         "objective-c" -> Right LanguageKindObjectiveC
         "objective-cpp" -> Right LanguageKindObjectiveCPP
         "pascal" -> Right LanguageKindPascal
         "perl" -> Right LanguageKindPerl
         "perl6" -> Right LanguageKindPerl6
         "php" -> Right LanguageKindPHP
         "powershell" -> Right LanguageKindPowershell
         "jade" -> Right LanguageKindPug
         "python" -> Right LanguageKindPython
         "r" -> Right LanguageKindR
         "razor" -> Right LanguageKindRazor
         "ruby" -> Right LanguageKindRuby
         "rust" -> Right LanguageKindRust
         "scss" -> Right LanguageKindSCSS
         "sass" -> Right LanguageKindSASS
         "scala" -> Right LanguageKindScala
         "shaderlab" -> Right LanguageKindShaderLab
         "shellscript" -> Right LanguageKindShellScript
         "sql" -> Right LanguageKindSQL
         "swift" -> Right LanguageKindSwift
         "typescript" -> Right LanguageKindTypeScript
         "typescriptreact" -> Right LanguageKindTypeScriptReact
         "tex" -> Right LanguageKindTeX
         "vb" -> Right LanguageKindVisualBasic
         "xml" -> Right LanguageKindXML
         "xsl" -> Right LanguageKindXSL
         "yaml" -> Right LanguageKindYAML
         _ -> Left ("Unrecognized LanguageKind value: " ++ ppJSON j)

data LanguageKind = LanguageKindABAP
                  | LanguageKindWindowsBat
                  | LanguageKindBibTeX
                  | LanguageKindClojure
                  | LanguageKindCoffeescript
                  | LanguageKindC
                  | LanguageKindCPP
                  | LanguageKindCSharp
                  | LanguageKindCSS
                  | LanguageKindD
                  | LanguageKindDelphi
                  | LanguageKindDiff
                  | LanguageKindDart
                  | LanguageKindDockerfile
                  | LanguageKindElixir
                  | LanguageKindErlang
                  | LanguageKindFSharp
                  | LanguageKindGitCommit
                  | LanguageKindGitRebase
                  | LanguageKindGo
                  | LanguageKindGroovy
                  | LanguageKindHandlebars
                  | LanguageKindHaskell
                  | LanguageKindHTML
                  | LanguageKindIni
                  | LanguageKindJava
                  | LanguageKindJavaScript
                  | LanguageKindJavaScriptReact
                  | LanguageKindJSON
                  | LanguageKindLaTeX
                  | LanguageKindLess
                  | LanguageKindLua
                  | LanguageKindMakefile
                  | LanguageKindMarkdown
                  | LanguageKindObjectiveC
                  | LanguageKindObjectiveCPP
                  | LanguageKindPascal
                  | LanguageKindPerl
                  | LanguageKindPerl6
                  | LanguageKindPHP
                  | LanguageKindPowershell
                  | LanguageKindPug
                  | LanguageKindPython
                  | LanguageKindR
                  | LanguageKindRazor
                  | LanguageKindRuby
                  | LanguageKindRust
                  | LanguageKindSCSS
                  | LanguageKindSASS
                  | LanguageKindScala
                  | LanguageKindShaderLab
                  | LanguageKindShellScript
                  | LanguageKindSQL
                  | LanguageKindSwift
                  | LanguageKindTypeScript
                  | LanguageKindTypeScriptReact
                  | LanguageKindTeX
                  | LanguageKindVisualBasic
                  | LanguageKindXML
                  | LanguageKindXSL
                  | LanguageKindYAML
 deriving (Show,Eq,Enum,Bounded,Ord)

