{
  description = ''pnm is library for PNM (Portable AnyMap).'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-pnm-develop.flake = false;
  inputs.src-pnm-develop.type = "github";
  inputs.src-pnm-develop.owner = "jiro4989";
  inputs.src-pnm-develop.repo = "pnm";
  inputs.src-pnm-develop.ref = "refs/heads/develop";
  inputs.src-pnm-develop.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-pnm-develop, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pnm-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-pnm-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}