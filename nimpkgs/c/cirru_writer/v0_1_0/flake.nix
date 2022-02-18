{
  description = ''Code writer for Cirru syntax'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-cirru_writer-v0_1_0.flake = false;
  inputs.src-cirru_writer-v0_1_0.type = "github";
  inputs.src-cirru_writer-v0_1_0.owner = "Cirru";
  inputs.src-cirru_writer-v0_1_0.repo = "writer.nim";
  inputs.src-cirru_writer-v0_1_0.ref = "refs/tags/v0.1.0";
  
  
  inputs."https://github.com/rosado/edn.nim".type = "github";
  inputs."https://github.com/rosado/edn.nim".owner = "riinr";
  inputs."https://github.com/rosado/edn.nim".repo = "flake-nimble";
  inputs."https://github.com/rosado/edn.nim".ref = "flake-pinning";
  inputs."https://github.com/rosado/edn.nim".dir = "nimpkgs/h/https://github.com/rosado/edn.nim";

  outputs = { self, nixpkgs, flakeNimbleLib, src-cirru_writer-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-cirru_writer-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-cirru_writer-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}