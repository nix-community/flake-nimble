{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
  inputs.src-hastysite-v1_1_0.flake = false;
  inputs.src-hastysite-v1_1_0.type = "github";
  inputs.src-hastysite-v1_1_0.owner = "h3rald";
  inputs.src-hastysite-v1_1_0.repo = "hastysite";
  inputs.src-hastysite-v1_1_0.ref = "refs/tags/v1.1.0";
  
  outputs = { self, nixpkgs, src-hastysite-v1_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-v1_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastysite-v1_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}