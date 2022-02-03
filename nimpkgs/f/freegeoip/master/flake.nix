{
  description = ''Retrieve info about a location from an IP address'';
  inputs.src-freegeoip-master.flake = false;
  inputs.src-freegeoip-master.type = "github";
  inputs.src-freegeoip-master.owner = "achesak";
  inputs.src-freegeoip-master.repo = "nim-freegeoip";
  inputs.src-freegeoip-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-freegeoip-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-freegeoip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-freegeoip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}