{
  description = ''Library to support work with pathnames in Windows and Posix-based systems. Inspired by Rubies pathname.'';
  inputs.src-pathname-v0_1_0.flake = false;
  inputs.src-pathname-v0_1_0.type = "github";
  inputs.src-pathname-v0_1_0.owner = "RaimundHuebel";
  inputs.src-pathname-v0_1_0.repo = "nimpathname";
  inputs.src-pathname-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-pathname-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-pathname-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-pathname-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}