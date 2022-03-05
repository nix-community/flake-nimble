{
  description = ''Tor helper library'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-tor-0_2_0.flake = false;
  inputs.src-tor-0_2_0.type = "github";
  inputs.src-tor-0_2_0.owner = "FedericoCeratto";
  inputs.src-tor-0_2_0.repo = "nim-tor";
  inputs.src-tor-0_2_0.ref = "refs/tags/0.2.0";
  inputs.src-tor-0_2_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tor-0_2_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tor-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tor-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}