{
  description = ''A client for the Google Cloud Text to Speech API.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.src-texttospeech-v0_1_0.flake = false;
  inputs.src-texttospeech-v0_1_0.type = "github";
  inputs.src-texttospeech-v0_1_0.owner = "dom96";
  inputs.src-texttospeech-v0_1_0.repo = "texttospeech";
  inputs.src-texttospeech-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-texttospeech-v0_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-texttospeech-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-texttospeech-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}