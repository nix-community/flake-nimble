{
  description = ''Nim bindings for mozilla's DeepSpeech model.'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-deepspeech-master.flake = false;
  inputs.src-deepspeech-master.type = "gitlab";
  inputs.src-deepspeech-master.owner = "eagledot";
  inputs.src-deepspeech-master.repo = "nim-deepspeech";
  inputs.src-deepspeech-master.ref = "refs/heads/master";
  inputs.src-deepspeech-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-deepspeech-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-deepspeech-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-deepspeech-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}