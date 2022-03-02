{
  description = ''An implementation of DNS server stamps in Nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-dnsstamps-0_1_0.flake = false;
  inputs.src-dnsstamps-0_1_0.type = "github";
  inputs.src-dnsstamps-0_1_0.owner = "alaviss";
  inputs.src-dnsstamps-0_1_0.repo = "dnsstamps";
  inputs.src-dnsstamps-0_1_0.ref = "refs/tags/0.1.0";
  inputs.src-dnsstamps-0_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-dnsstamps-0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsstamps-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-dnsstamps-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}