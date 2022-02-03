{
  description = ''A client for the Google Cloud Text to Speech API.'';
  inputs.src-texttospeech-master.flake = false;
  inputs.src-texttospeech-master.type = "github";
  inputs.src-texttospeech-master.owner = "dom96";
  inputs.src-texttospeech-master.repo = "texttospeech";
  inputs.src-texttospeech-master.ref = "refs/heads/master";
  
  outputs = { self, nixpkgs, src-texttospeech-master, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-texttospeech-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-texttospeech-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}