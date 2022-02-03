{
  description = ''PNG(Portable Network Graphics) encoder and decoder'';
  inputs.src-nimPNG-master.flake = false;
  inputs.src-nimPNG-master.type = "github";
  inputs.src-nimPNG-master.owner = "jangko";
  inputs.src-nimPNG-master.repo = "nimPNG";
  inputs.src-nimPNG-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-nimPNG-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-nimPNG-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-nimPNG-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}