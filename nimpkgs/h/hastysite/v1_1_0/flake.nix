{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "flake-nimble";
  inputs.flakeNimbleLib.ref = "flake-pinning";
  inputs.flakeNimbleLib.dir = "nimpkgs/";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
  inputs.src-hastysite-v1_1_0.flake = false;
  inputs.src-hastysite-v1_1_0.type = "github";
  inputs.src-hastysite-v1_1_0.owner = "h3rald";
  inputs.src-hastysite-v1_1_0.repo = "hastysite";
  inputs.src-hastysite-v1_1_0.ref = "refs/tags/v1.1.0";
  inputs.src-hastysite-v1_1_0.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-hastysite-v1_1_0, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-hastysite-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}