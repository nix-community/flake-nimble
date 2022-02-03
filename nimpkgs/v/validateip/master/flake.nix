{
  description = ''Checks if a provided string is actually a correct IP address. Supports detection of Class A to D of IPv4 addresses.'';
  inputs.src-validateip-master.flake = false;
  inputs.src-validateip-master.type = "github";
  inputs.src-validateip-master.owner = "theAkito";
  inputs.src-validateip-master.repo = "nim-validateip";
  inputs.src-validateip-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-validateip-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-validateip-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-validateip-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}