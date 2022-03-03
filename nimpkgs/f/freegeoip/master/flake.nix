{
  description = ''Retrieve info about a location from an IP address'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-freegeoip-master.flake = false;
  inputs.src-freegeoip-master.type = "github";
  inputs.src-freegeoip-master.owner = "achesak";
  inputs.src-freegeoip-master.repo = "nim-freegeoip";
  inputs.src-freegeoip-master.ref = "refs/heads/master";
  inputs.src-freegeoip-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-freegeoip-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-freegeoip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-freegeoip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}