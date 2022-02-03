{
  description = ''.NET-inspired lightweight terminal library'';
  inputs.src-conio-master.flake = false;
  inputs.src-conio-master.type = "github";
  inputs.src-conio-master.owner = "guevara-chan";
  inputs.src-conio-master.repo = "conio";
  inputs.src-conio-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-conio-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-conio-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-conio-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}