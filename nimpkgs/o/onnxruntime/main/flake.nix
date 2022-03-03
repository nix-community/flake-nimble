{
  description = ''onnxruntime C Api wrapped for nim'';
    inputs.flakeNimbleLib.type = "github";
  inputs.flakeNimbleLib.owner = "riinr";
  inputs.flakeNimbleLib.repo = "nim-flakes-lib";
  inputs.flakeNimbleLib.ref = "master";
  inputs.flakeNimbleLib.inputs.nixpkgs.follows = "nixpkgs";
    inputs.src-onnxruntime-main.flake = false;
  inputs.src-onnxruntime-main.type = "github";
  inputs.src-onnxruntime-main.owner = "YesDrX";
  inputs.src-onnxruntime-main.repo = "onnxruntime-nim";
  inputs.src-onnxruntime-main.ref = "refs/heads/main";
  inputs.src-onnxruntime-main.inputs.nixpkgs.follows = "nixpkgs";
  
  outputs = { self, nixpkgs, flakeNimbleLib, src-onnxruntime-main, ...}@deps:
    let lib = flakeNimbleLib.lib;
    in lib.mkRefOutput {
      inherit self nixpkgs ;
      src = src-onnxruntime-main;
      deps = builtins.removeAttrs deps ["self" "nixpkgs" "flakeNimbleLib" "src-onnxruntime-main"];
      meta = builtins.fromJSON (builtins.readFile ./meta.json);
    };
}