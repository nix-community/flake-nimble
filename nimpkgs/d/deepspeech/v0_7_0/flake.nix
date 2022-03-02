{
  description = ''Nim bindings for mozilla's DeepSpeech model.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-deepspeech-v0_7_0.flake = false;
  inputs.src-deepspeech-v0_7_0.type = "gitlab";
  inputs.src-deepspeech-v0_7_0.owner = "eagledot";
  inputs.src-deepspeech-v0_7_0.repo = "nim-deepspeech";
  inputs.src-deepspeech-v0_7_0.ref = "refs/tags/v0.7.0";
  inputs.src-deepspeech-v0_7_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-deepspeech-v0_7_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deepspeech-v0_7_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-deepspeech-v0_7_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}