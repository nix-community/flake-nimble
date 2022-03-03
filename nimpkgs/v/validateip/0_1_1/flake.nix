{
  description = ''Checks if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-validateip-0_1_1.flake = false;
  inputs.src-validateip-0_1_1.type = "github";
  inputs.src-validateip-0_1_1.owner = "theAkito";
  inputs.src-validateip-0_1_1.repo = "nim-validateip";
  inputs.src-validateip-0_1_1.ref = "refs/tags/0.1.1";
  inputs.src-validateip-0_1_1.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-validateip-0_1_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-validateip-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-validateip-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}