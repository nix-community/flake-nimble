{
  description = ''Checks if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-validateip-master.flake = false;
  inputs.src-validateip-master.type = "github";
  inputs.src-validateip-master.owner = "theAkito";
  inputs.src-validateip-master.repo = "nim-validateip";
  inputs.src-validateip-master.ref = "refs/heads/master";
  inputs.src-validateip-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-validateip-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-validateip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-validateip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}