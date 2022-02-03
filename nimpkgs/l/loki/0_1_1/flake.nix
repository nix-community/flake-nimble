{
  description = ''A small library for writing cli programs in Nim.'';
  inputs.src-loki-0_1_1.flake = false;
  inputs.src-loki-0_1_1.type = "github";
  inputs.src-loki-0_1_1.owner = "beshrkayali";
  inputs.src-loki-0_1_1.repo = "loki";
  inputs.src-loki-0_1_1.ref = "refs/tags/0.1.1";
  
  outputs = { self, nixpkgs, src-loki-0_1_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-loki-0_1_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-loki-0_1_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}