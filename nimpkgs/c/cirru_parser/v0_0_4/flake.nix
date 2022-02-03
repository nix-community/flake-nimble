{
  description = ''Parser for Cirru syntax'';
  inputs.src-cirru_parser-v0_0_4.flake = false;
  inputs.src-cirru_parser-v0_0_4.type = "github";
  inputs.src-cirru_parser-v0_0_4.owner = "Cirru";
  inputs.src-cirru_parser-v0_0_4.repo = "parser.nim";
  inputs.src-cirru_parser-v0_0_4.ref = "refs/tags/v0.0.4";
  
  outputs = { self, nixpkgs, src-cirru_parser-v0_0_4, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_parser-v0_0_4;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cirru_parser-v0_0_4"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}