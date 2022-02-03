{
  description = ''Library to support work with pathnames in Windows and Posix-based systems. Inspired by Rubies pathname.'';
  inputs.src-pathname-master.flake = false;
  inputs.src-pathname-master.type = "github";
  inputs.src-pathname-master.owner = "RaimundHuebel";
  inputs.src-pathname-master.repo = "nimpathname";
  inputs.src-pathname-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-pathname-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pathname-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pathname-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}