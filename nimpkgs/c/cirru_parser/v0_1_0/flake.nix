{
  description = ''Parser for Cirru syntax'';
  inputs.src-cirru_parser-v0_1_0.flake = false;
  inputs.src-cirru_parser-v0_1_0.type = "github";
  inputs.src-cirru_parser-v0_1_0.owner = "Cirru";
  inputs.src-cirru_parser-v0_1_0.repo = "parser.nim";
  inputs.src-cirru_parser-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-cirru_parser-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_parser-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cirru_parser-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}