{
  description = ''Parser for Cirru syntax'';
  inputs.src-cirru_parser-v0_1_3.flake = false;
  inputs.src-cirru_parser-v0_1_3.type = "github";
  inputs.src-cirru_parser-v0_1_3.owner = "Cirru";
  inputs.src-cirru_parser-v0_1_3.repo = "parser.nim";
  inputs.src-cirru_parser-v0_1_3.ref = "refs/tags/v0.1.3";
  
  outputs = { self, nixpkgs, src-cirru_parser-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_parser-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cirru_parser-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}