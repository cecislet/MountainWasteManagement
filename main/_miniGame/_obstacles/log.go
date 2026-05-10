components {
  id: "obstacle"
  component: "/_scripts/MiniGame/element.script"
}
embedded_components {
  id: "sprite"
  type: "sprite"
  data: "default_animation: \"log\"\n"
  "material: \"/builtins/materials/sprite.material\"\n"
  "textures {\n"
  "  sampler: \"texture_sampler\"\n"
  "  texture: \"/main/_miniGame/_obstacles/obstacles.atlas\"\n"
  "}\n"
  ""
  scale {
    x: 0.970356
    y: 1.06026
    z: 1.24
  }
}
embedded_components {
  id: "collisionobject"
  type: "collisionobject"
  data: "type: COLLISION_OBJECT_TYPE_TRIGGER\n"
  "mass: 0.0\n"
  "friction: 0.1\n"
  "restitution: 0.5\n"
  "group: \"Rock\"\n"
  "mask: \"Player\"\n"
  "mask: \"Map\"\n"
  "mask: \"Tree\"\n"
  "mask: \"Rock\"\n"
  "mask: \"Coin\"\n"
  "mask: \"KnowledgeItem\"\n"
  "mask: \"FinishLine\"\n"
  "mask: \"KnowledgePowerUp\"\n"
  "mask: \"CoinPowerUp\"\n"
  "embedded_collision_shape {\n"
  "  shapes {\n"
  "    shape_type: TYPE_BOX\n"
  "    position {\n"
  "      x: -0.8\n"
  "    }\n"
  "    rotation {\n"
  "    }\n"
  "    index: 0\n"
  "    count: 3\n"
  "    id: \"hit1\"\n"
  "  }\n"
  "  data: 5.909829\n"
  "  data: 16.916048\n"
  "  data: 12.56\n"
  "}\n"
  ""
}
