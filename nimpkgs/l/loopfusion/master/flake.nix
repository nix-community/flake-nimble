{
  description = ''Loop efficiently over a variadic number of containers'';
  inputs.src-loopfusion-master.flake = false;
  inputs.src-loopfusion-master.type = "github";
  inputs.src-loopfusion-master.owner = "numforge";
  inputs.src-loopfusion-master.repo = "loopfusion";
  inputs.src-loopfusion-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-loopfusion-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loopfusion-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-loopfusion-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}