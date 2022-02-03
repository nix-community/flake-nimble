{
  description = ''A small but powerful static site generator powered by HastyScribe and min'';
  inputs.src-hastysite-0_1_0.flake = false;
  inputs.src-hastysite-0_1_0.type = "github";
  inputs.src-hastysite-0_1_0.owner = "h3rald";
  inputs.src-hastysite-0_1_0.repo = "hastysite";
  inputs.src-hastysite-0_1_0.ref = "refs/tags/0.1.0";
  
  outputs = { self, nixpkgs, src-hastysite-0_1_0, ...}@deps:
    let lib = import ./lib.nix;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-hastysite-0_1_0;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "src-hastysite-0_1_0"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}