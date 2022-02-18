{
  description = ''Nim bindings for mozilla's DeepSpeech model.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-deepspeech-v0_7_1.flake = false;
  inputs.src-deepspeech-v0_7_1.type = "gitlab";
  inputs.src-deepspeech-v0_7_1.owner = "eagledot";
  inputs.src-deepspeech-v0_7_1.repo = "nim-deepspeech";
  inputs.src-deepspeech-v0_7_1.ref = "refs/tags/v0.7.1";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-deepspeech-v0_7_1, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deepspeech-v0_7_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-deepspeech-v0_7_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}