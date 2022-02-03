{
  description = ''Ladder logic macros for Nim'';
  inputs.src-ladder-0_4_0.flake = false;
  inputs.src-ladder-0_4_0.type = "gitlab";
  inputs.src-ladder-0_4_0.owner = "ryukoposting";
  inputs.src-ladder-0_4_0.repo = "nim-ladder";
  inputs.src-ladder-0_4_0.ref = "refs/tags/0.4.0";
  
  outputs = { self, nixpkgs, src-ladder-0_4_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-ladder-0_4_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-ladder-0_4_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}