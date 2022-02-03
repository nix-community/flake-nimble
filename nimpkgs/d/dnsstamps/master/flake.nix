{
  description = ''An implementation of DNS server stamps in Nim'';
  inputs.src-dnsstamps-master.flake = false;
  inputs.src-dnsstamps-master.type = "github";
  inputs.src-dnsstamps-master.owner = "alaviss";
  inputs.src-dnsstamps-master.repo = "dnsstamps";
  inputs.src-dnsstamps-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-dnsstamps-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-dnsstamps-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-dnsstamps-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}