{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
  inputs.src-hastysite-v1_0_1.flake = false;
  inputs.src-hastysite-v1_0_1.type = "github";
  inputs.src-hastysite-v1_0_1.owner = "h3rald";
  inputs.src-hastysite-v1_0_1.repo = "hastysite";
  inputs.src-hastysite-v1_0_1.ref = "refs/tags/v1.0.1";
  
  outputs = { self, nixpkgs, src-hastysite-v1_0_1, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-v1_0_1;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastysite-v1_0_1"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}