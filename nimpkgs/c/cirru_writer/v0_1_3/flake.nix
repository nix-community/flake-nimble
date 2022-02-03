{
  description = ''Code writer for Cirru syntax'';
  inputs.src-cirru_writer-v0_1_3.flake = false;
  inputs.src-cirru_writer-v0_1_3.type = "github";
  inputs.src-cirru_writer-v0_1_3.owner = "Cirru";
  inputs.src-cirru_writer-v0_1_3.repo = "writer.nim";
  inputs.src-cirru_writer-v0_1_3.ref = "refs/tags/v0.1.3";
  
  
  inputs."https://github.com/rosado/edn.nim".url = "path:../../../h/https://github.com/rosado/edn.nim";
  inputs."https://github.com/rosado/edn.nim".type = "github";
  inputs."https://github.com/rosado/edn.nim".owner = "riinr";
  inputs."https://github.com/rosado/edn.nim".repo = "flake-nimble";
  inputs."https://github.com/rosado/edn.nim".ref = "flake-pinning";
  inputs."https://github.com/rosado/edn.nim".dir = "nimpkgs/h/https://github.com/rosado/edn.nim";

  outputs = { self, nixpkgs, src-cirru_writer-v0_1_3, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_writer-v0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-cirru_writer-v0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}