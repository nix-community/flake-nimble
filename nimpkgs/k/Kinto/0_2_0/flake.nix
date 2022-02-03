{
  description = ''Kinto Client for Nim'';
  inputs.src-Kinto-0_2_0.flake = false;
  inputs.src-Kinto-0_2_0.type = "github";
  inputs.src-Kinto-0_2_0.owner = "OpenSystemsLab";
  inputs.src-Kinto-0_2_0.repo = "kinto.nim";
  inputs.src-Kinto-0_2_0.ref = "refs/tags/0.2.0";
  
  outputs = { self, nixpkgs, src-Kinto-0_2_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-Kinto-0_2_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-Kinto-0_2_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}