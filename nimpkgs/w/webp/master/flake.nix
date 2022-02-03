{
  description = ''WebP Tools wrapper for Nim'';
  inputs.src-webp-master.flake = false;
  inputs.src-webp-master.type = "github";
  inputs.src-webp-master.owner = "juancarlospaco";
  inputs.src-webp-master.repo = "nim-webp";
  inputs.src-webp-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-webp-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-webp-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-webp-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}