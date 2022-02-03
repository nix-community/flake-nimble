{
  description = ''Kinto Client for Nim'';
  inputs.src-Kinto-0_2_2.flake = false;
  inputs.src-Kinto-0_2_2.type = "github";
  inputs.src-Kinto-0_2_2.owner = "OpenSystemsLab";
  inputs.src-Kinto-0_2_2.repo = "kinto.nim";
  inputs.src-Kinto-0_2_2.ref = "refs/tags/0.2.2";
  
  outputs = { self, nixpkgs, src-Kinto-0_2_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Kinto-0_2_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Kinto-0_2_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}