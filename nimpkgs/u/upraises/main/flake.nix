{
  description = ''exception tracking for older versions of nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-upraises-main.flake = false;
  inputs.src-upraises-main.type = "github";
  inputs.src-upraises-main.owner = "markspanbroek";
  inputs.src-upraises-main.repo = "upraises";
  inputs.src-upraises-main.ref = "refs/heads/main";
  inputs.src-upraises-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-upraises-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-upraises-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-upraises-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}