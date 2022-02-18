{
  description = ''Nim wrapper for edlib'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-edlib-main.flake = false;
  inputs.src-edlib-main.type = "github";
  inputs.src-edlib-main.owner = "bio-nim";
  inputs.src-edlib-main.repo = "nim-edlib";
  inputs.src-edlib-main.ref = "refs/heads/main";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-edlib-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-edlib-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-edlib-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}