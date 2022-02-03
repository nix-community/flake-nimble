{
  description = ''A small library for writing cli programs in Nim.'';
  inputs.src-loki-0_1_0.flake = false;
  inputs.src-loki-0_1_0.type = "github";
  inputs.src-loki-0_1_0.owner = "beshrkayali";
  inputs.src-loki-0_1_0.repo = "loki";
  inputs.src-loki-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-loki-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loki-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-loki-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}