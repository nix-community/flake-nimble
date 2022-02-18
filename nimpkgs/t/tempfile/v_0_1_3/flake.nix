{
  description = ''Temporary files and directories'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-tempfile-v_0_1_3.flake = false;
  inputs.src-tempfile-v_0_1_3.type = "github";
  inputs.src-tempfile-v_0_1_3.owner = "OpenSystemsLab";
  inputs.src-tempfile-v_0_1_3.repo = "tempfile.nim";
  inputs.src-tempfile-v_0_1_3.ref = "refs/tags/v.0.1.3";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-tempfile-v_0_1_3, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-tempfile-v_0_1_3;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-tempfile-v_0_1_3"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}