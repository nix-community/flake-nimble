{
  description = ''Code writer for Cirru syntax'';
  inputs.src-cirru_writer-master.flake = false;
  inputs.src-cirru_writer-master.type = "github";
  inputs.src-cirru_writer-master.owner = "Cirru";
  inputs.src-cirru_writer-master.repo = "writer.nim";
  inputs.src-cirru_writer-master.ref = "refs/heads/master";
  
  
  inputs."https://github.com/rosado/edn.nim".type = "github";
  inputs."https://github.com/rosado/edn.nim".owner = "riinr";
  inputs."https://github.com/rosado/edn.nim".repo = "flake-nimble";
  inputs."https://github.com/rosado/edn.nim".ref = "flake-pinning";
  inputs."https://github.com/rosado/edn.nim".dir = "nimpkgs/h/https://github.com/rosado/edn.nim";

  outputs = { self, nixpkgs, src-cirru_writer-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_writer-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cirru_writer-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}