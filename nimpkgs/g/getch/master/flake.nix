{
  description = ''getch() for Windows and Unix'';
  inputs.src-getch-master.flake = false;
  inputs.src-getch-master.type = "github";
  inputs.src-getch-master.owner = "6A";
  inputs.src-getch-master.repo = "getch";
  inputs.src-getch-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-getch-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-getch-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-getch-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}