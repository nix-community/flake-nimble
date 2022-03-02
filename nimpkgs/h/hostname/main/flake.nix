{
  description = ''Nim library to get/set a hostname'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hostname-main.flake = false;
  inputs.src-hostname-main.type = "github";
  inputs.src-hostname-main.owner = "rominf";
  inputs.src-hostname-main.repo = "nim-hostname";
  inputs.src-hostname-main.ref = "refs/heads/main";
  inputs.src-hostname-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hostname-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hostname-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hostname-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}