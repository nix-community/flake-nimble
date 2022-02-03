{
  description = ''Library for shell scripting in nim'';
  inputs.src-nimshell-master.flake = false;
  inputs.src-nimshell-master.type = "github";
  inputs.src-nimshell-master.owner = "vegansk";
  inputs.src-nimshell-master.repo = "nimshell";
  inputs.src-nimshell-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimshell-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimshell-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimshell-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}