{
  description = ''Parser for Cirru syntax'';
  inputs.src-cirru_parser-master.flake = false;
  inputs.src-cirru_parser-master.type = "github";
  inputs.src-cirru_parser-master.owner = "Cirru";
  inputs.src-cirru_parser-master.repo = "parser.nim";
  inputs.src-cirru_parser-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-cirru_parser-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_parser-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cirru_parser-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}