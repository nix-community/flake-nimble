{
  description = ''grab statement for importing Nimble packages, similar to Groovy's Grape'';
  inputs.src-grab-master.flake = false;
  inputs.src-grab-master.type = "github";
  inputs.src-grab-master.owner = "metagn";
  inputs.src-grab-master.repo = "grab";
  inputs.src-grab-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-grab-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-grab-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-grab-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}