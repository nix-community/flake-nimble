{
  description = ''base64 cui'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-base64_decoder-master.flake = false;
  inputs.src-base64_decoder-master.type = "github";
  inputs.src-base64_decoder-master.owner = "momeemt";
  inputs.src-base64_decoder-master.repo = "base64_cui";
  inputs.src-base64_decoder-master.ref = "refs/heads/master";
  inputs.src-base64_decoder-master.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-base64_decoder-master, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-base64_decoder-master;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-base64_decoder-master"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}