{
  description = ''Small and dependency free Nim package to infer file and MIME type checking the magic numbers signature.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-filetype-main.flake = false;
  inputs.src-filetype-main.type = "github";
  inputs.src-filetype-main.owner = "jiro4989";
  inputs.src-filetype-main.repo = "filetype";
  inputs.src-filetype-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-filetype-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-filetype-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-filetype-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}