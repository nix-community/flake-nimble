{
  description = ''Code writer for Cirru syntax'';
  inputs.src-cirru_writer-v0_1_2.flake = false;
  inputs.src-cirru_writer-v0_1_2.type = "github";
  inputs.src-cirru_writer-v0_1_2.owner = "Cirru";
  inputs.src-cirru_writer-v0_1_2.repo = "writer.nim";
  inputs.src-cirru_writer-v0_1_2.ref = "refs/tags/v0.1.2";
  
  
  inputs."https://github.com/rosado/edn.nim".type = "github";
  inputs."https://github.com/rosado/edn.nim".owner = "riinr";
  inputs."https://github.com/rosado/edn.nim".repo = "flake-nimble";
  inputs."https://github.com/rosado/edn.nim".ref = "flake-pinning";
  inputs."https://github.com/rosado/edn.nim".dir = "nimpkgs/h/https://github.com/rosado/edn.nim";

  outputs = { self, nixpkgs, src-cirru_writer-v0_1_2, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_writer-v0_1_2;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cirru_writer-v0_1_2"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}