{
  description = ''Implementation of various LZ77 algorithms'';
  inputs.src-lz77-master.flake = false;
  inputs.src-lz77-master.type = "github";
  inputs.src-lz77-master.owner = "sealmove";
  inputs.src-lz77-master.repo = "LZ77";
  inputs.src-lz77-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-lz77-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-lz77-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-lz77-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}