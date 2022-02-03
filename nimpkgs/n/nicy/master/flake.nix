{
  description = ''A nice and icy ZSH prompt in Nim'';
  inputs.src-nicy-master.flake = false;
  inputs.src-nicy-master.type = "github";
  inputs.src-nicy-master.owner = "icyphox";
  inputs.src-nicy-master.repo = "nicy";
  inputs.src-nicy-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nicy-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nicy-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nicy-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}