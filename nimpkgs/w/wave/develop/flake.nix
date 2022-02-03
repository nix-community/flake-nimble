{
  description = ''wave is a tiny WAV sound module'';
  inputs.src-wave-develop.flake = false;
  inputs.src-wave-develop.type = "github";
  inputs.src-wave-develop.owner = "jiro4989";
  inputs.src-wave-develop.repo = "wave";
  inputs.src-wave-develop.ref = "refs/heads/develop";
  
  outputs = { self, nixpkgs, src-wave-develop, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-wave-develop;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-wave-develop"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}