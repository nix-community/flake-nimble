{
  description = ''A client for the Google Cloud Text to Speech API.'';
  inputs.src-texttospeech-v0_1_0.flake = false;
  inputs.src-texttospeech-v0_1_0.type = "github";
  inputs.src-texttospeech-v0_1_0.owner = "dom96";
  inputs.src-texttospeech-v0_1_0.repo = "texttospeech";
  inputs.src-texttospeech-v0_1_0.ref = "refs/tags/v0.1.0";
  
  outputs = { self, nixpkgs, src-texttospeech-v0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-texttospeech-v0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-texttospeech-v0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}